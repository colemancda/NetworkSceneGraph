//
//  NSGSceneController.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SceneKit/SceneKit.h>

@interface NSGSceneController : NSObject

@property (nonatomic, readonly) SCNScene *scene;

@property (nonatomic, readonly) NSUInteger rootNodesCount;

-(IBAction)reloadScene:(id)sender;

@end

@protocol NSGSceneControllerDataSource <NSObject>

-(NSUInteger)numberOfRootNodesInSceneController:(NSGSceneController *)sceneController;

-(SCNNode *)sceneController:(NSGSceneController *)sceneController rootNodeForIndex:(NSUInteger)index;

-(SCNMaterialProperty *)backgroundForSceneController:(NSGSceneController *)sceneController;

-(SCNPhysicsWorld *)physicsWorld

@end

@protocol NSGSceneControllerDelegate <NSObject>



@end
