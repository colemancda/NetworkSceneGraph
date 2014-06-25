//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/21/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"

@interface NSGSceneController (IncrementallyFetchRelationshipValues)

-(void)incrementallyFetchRelationshipValuesOfManagedObject:(NSManagedObject *)managedObject
                                             newerThanDate:(NSDate *)date;

@end

@interface NSGSceneController ()

@end

@implementation NSGSceneController

-(void)fetchScene
{
    // fetch the scene according to the resource ID
    
    [self.store fetchEntityWithName:@"NSGScene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        // call delegate
        
        [self.store.managedObjectContext performBlock:^{
            
            [self.delegate sceneController:self didFetchScene:(NSGScene *)managedObject withError:error];
            
        }];
        
        // cannot continue to fetch network scene graph if the scene cannot be fetched
        
        if (error) {
            
            return;
        }
        
        // fetch scene graph elements (basically "faulting" relationships over the internet) recursively
        
        [self incrementallyFetchRelationshipValuesOfManagedObject:managedObject newerThanDate:[NSDate date]];
        
    }];
}

@end

@implementation NSGSceneController (IncrementallyFetchRelationshipValues)

-(void)incrementallyFetchRelationshipValuesOfManagedObject:(NSManagedObject *)managedObject
                                             newerThanDate:(NSDate *)date
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
