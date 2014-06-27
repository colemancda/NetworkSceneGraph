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

-(void)fetchScene
{
    [self.store fetchEntityWithName:@"Scene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        [self.delegate sceneController:self
                 didFetchManagedObject:managedObject
                       withEntityNamed:@"Scene"
                            resourceID:self.sceneResourceID
                                 error:error];
        
        if (error) {
            
            return;
        }
        
        NSGScene *scene = (NSGScene *)managedObject;
        
        if (scene.background) {
            
            // download background
            
            [self.store fetchEntityWithName:@"MaterialProperty" resourceID:scene.background.resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                
                [self.delegate sceneController:self
                         didFetchManagedObject:managedObject
                               withEntityNamed:@"MaterialProperty"
                                    resourceID:self.sceneResourceID
                                         error:error];
                
                if (error) {
                    
                    return;
                }
                
                NSGMaterialProperty *background = (NSGMaterialProperty *)managedObject;
                
                [self.scene.background setValuesForManagedObject:background];
                
            }];
        }
        
        if (scene.physicsWorld) {
            
            // download physics world
            
            [self.store fetchEntityWithName:@"PhysicsWorld" resourceID:scene.physicsWorld.resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                
                [self.delegate sceneController:self
                         didFetchManagedObject:managedObject
                               withEntityNamed:@"PhysicsWorld"
                                    resourceID:self.sceneResourceID
                                         error:error];
                
                if (error) {
                    
                    return;
                }
                
                [self.scene.physicsWorld setValuesForManagedObject:managedObject];
                
            }];
        }
        
        // download root nodes
        
        for (NSGNode *rootNode in scene.nodes) {
            
            // fetch
            
            [self.store fetchEntityWithName:@"Node" resourceID:rootNode.resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                
                NSGNode *childNode
               
                while (<#condition#>) {
                    <#statements#>
                }
                
            }];
        }
        
    }];
    
}

@end
