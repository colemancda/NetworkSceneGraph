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

@interface NSGSceneController ()

@property (nonatomic) SCNScene *scene;

@property (nonatomic) SCNCamera *pointOfView;

@end

@implementation NSGSceneController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)fetchScene
{
    [self.store fetchEntityWithName:@"NSGScene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        [self.delegate sceneController:self didFetchSceneWithError:error];
        
        if (error) {
            
            return;
        }
        
        self.scene = [SCNScene scene];
        
        self.pointOfView = [SCNCamera camera];
        
        NSGScene *scene = (NSGScene *)managedObject;
        
        // download root nodes
        
        for (NSGNode *rootNode in scene.nodes) {
            
            SCNNode *sceneNode = [SCNNode node];
            
            sceneNode.name 
            
            __block NSGNode *node;
            
            // fetch from server
            
            while (!node) {
                
                [self.store fetchEntityWithName:@"NSGNode" resourceID:rootNode.resourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
                   
                    
                    
                }];
            }
            
        }
        
    }];
    
}

@end
