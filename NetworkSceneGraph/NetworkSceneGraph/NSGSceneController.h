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
@class NSGScene;

@protocol NSGSceneControllerDelegate;

@interface NSGSceneController : NSObject

#pragma mark - Configuration Properties

// These properties setup the controller, should not be changed while fetching.

/** The store that will cache the managed object representation of the server's scene's. */

@property (nonatomic) NOStore *store;

@property (nonatomic) NSURLSession *URLSession;

@property (nonatomic) NSNumber *sceneResourceID;

@property (nonatomic) NSNumber *destinationNodeResourceID;

@property (nonatomic) id<NSGSceneControllerDelegate> delegate;

#pragma mark - Output Properties

// These properties are created and managed by the controller

@property (nonatomic, readonly) NSGScene *scene;

@property (nonatomic, readonly) id audioStream;

/** Downloads the scene graph's elements. */

-(void)fetchScene;

@end

/** Delegate protocol for incrementally downloading and caching the network scene graph. The delegate methods will be called on the same queue as the controller's store's managed object context. */

@protocol NSGSceneControllerDelegate <NSObject>

-(void)sceneController:(NSGSceneController *)sceneController didFetchSceneWithError:(NSError *)error;

@end