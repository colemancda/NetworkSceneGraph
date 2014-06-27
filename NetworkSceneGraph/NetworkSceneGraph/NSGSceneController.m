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
    [self.store fetchEntityWithName:@"NSGScene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        [self.delegate sceneController:self didFetchSceneWithError:error];
        
        if (error) {
            
            return;
        }
        
        NSGScene *scene = (NSGScene *)managedObject;
        
        // download background
        
        [self.store fetchEntityWithName:@"NSGMaterialProperty" resourceID:scene.background.resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
           
            NSGMaterialProperty *background = (NSGMaterialProperty *)managedObject;
            
            [self.scene.background configureUsingManagedObject:background];
            
        }];
        
        // download root nodes
        
        for (NSGNode *rootNode in scene.nodes) {
            
            // fetch
            
            
            
        }
        
    }];
    
}

#pragma mark - Internal Methods

-(void)managedObjectContextObjectsDidChangeNotification:(NSNotification *)notification
{
    
    
}

@end
