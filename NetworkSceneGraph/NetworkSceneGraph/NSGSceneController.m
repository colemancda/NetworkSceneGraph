//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/21/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"

#import "NSGScene.h"
#import "NSGNode.h"
#import "NSGMaterialProperty.h"
#import "NSGPhysicsWorld.h"

static void *KVOContext = &KVOContext;

@interface NSGSceneController (RecursivelyFetchRelationshipValues)

-(void)recursivelyFetchRelationshipValuesOfManagedObject:(NSManagedObject *)managedObject
                                           newerThanDate:(NSDate *)date
                                                   block:(NSGSceneControllerLoadSceneProgressBlock)block;

@end

@interface NSGSceneController ()

@property (nonatomic) SCNScene *scene;

@property (nonatomic) SCNCamera *pointOfView;

@end

@implementation NSGSceneController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.scene = [SCNScene scene];
        
        self.pointOfView = [SCNCamera camera];
        
    }
    return self;
}

#pragma mark - Fetch Scene

-(void)loadSceneWithProgressBlock:(NSGSceneControllerLoadSceneProgressBlock)block
{
    [self.store fetchEntityWithName:@"Scene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        BOOL shouldStop = NO;
        
        // managedObject will only be nil for the scene managed object
        
        block(managedObject, error, &shouldStop);
        
        if (error) {
            
            if (!shouldStop) {
                
                [self loadSceneWithProgressBlock:block];
            }
            
            return;
        }
        
        NSDate *date = [NSDate date];
                
        [self recursivelyFetchRelationshipValuesOfManagedObject:managedObject
                                                  newerThanDate:date
                                                          block:block];
    }];
}

@end

@implementation NSGSceneController (RecursivelyFetchRelationshipValues)

-(void)recursivelyFetchRelationshipValuesOfManagedObject:(NSManagedObject *)managedObject
                                           newerThanDate:(NSDate *)date
                                                   block:(NSGSceneControllerLoadSceneProgressBlock)block
{
    for (NSString *relationshipName in managedObject.entity.relationshipsByName) {
        
        NSRelationshipDescription *relationship = managedObject.entity.relationshipsByName[relationshipName];
        
        // to many relationship
        
        if (!relationship.isToMany) {
            
            __block NSNumber *resourceID;
            
            __block NSManagedObject *destinationObject;
            
            __block NSDate *dateCached;
            
            [self.store.managedObjectContext performBlockAndWait:^{
                
                destinationObject = [managedObject valueForKey:relationshipName];
                
                resourceID = [destinationObject valueForKey:self.store.resourceIDAttributeName];
                
                dateCached = [destinationObject valueForKey:self.store.dateCachedAttributeName];
                
            }];
            
            // download is not cached or cache is old
            
            if (!dateCached || [dateCached compare:date] == NSOrderedAscending) {
                
                [self.store fetchEntityWithName:relationship.destinationEntity.name resourceID:resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                    
                    [self.store.managedObjectContext performBlock:^{
                        
                        [self.delegate sceneController:self didFetchSceneGraphElement:destinationObject withError:error];
                        
                        // download the relationship values of this managed object
                        
                        [self incrementallyFetchRelationshipValuesOfManagedObject:destinationObject newerThanDate:date];
                        
                    }];
                }];
            }
        }
        
        else {
            
            [self.store.managedObjectContext performBlock:^{
                
                for (NSManagedObject *destinationObject in [managedObject valueForKey:relationshipName]) {
                    
                    NSNumber *resourceID = [destinationObject valueForKey:self.store.resourceIDAttributeName];
                    
                    // download if not cached or cache is old
                    
                    if ([date compare:[NSDate date]] == NSOrderedAscending) {
                        
                        [self.store fetchEntityWithName:relationship.destinationEntity.name resourceID:resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                            
                            [self.store.managedObjectContext performBlock:^{
                                
                                [self.delegate sceneController:self didFetchSceneGraphElement:destinationObject withError:error];
                                
                                // download the relationship values of this managed object
                                
                                [self incrementallyFetchRelationshipValuesOfManagedObject:destinationObject newerThanDate:date];
                                
                            }];
                        }];
                    }
                }
                
            }];
        }
    }
    
}

@end
