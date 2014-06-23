//
//  NSGSceneController.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/21/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SceneKit/SceneKit.h>
#import <NetworkObjects/NetworkObjects.h>

@interface NSGSceneController : NSObject

/** The networked 3D scene that this controller accessing. */

@property (nonatomic, readonly, copy) SCNScene *scene;

/** The camera defines how this scene is displayed in a 2D view. */

@property (nonatomic, readonly, copy) SCNCamera *camera;

/** The store that will cache the managed object representation of the scene. */

@property (nonatomic, readonly) NOStore *store;

@end
