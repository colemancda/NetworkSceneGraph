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

/* Block used to report and control progress of loading a scene. 
 */

typedef void (^NSGSceneControllerLoadSceneProgressBlock)(NSManagedObject *fetchedManagedObject, NSError *error, BOOL *stop);

@interface NSGSceneController : NSObject
{
    BOOL _shouldStopSceneLoading;
}

#pragma mark - Properties

// These properties setup the controller, should not be changed while fetching.

/** The store that will cache the managed object representation of the server's scene's. */

@property (nonatomic) NOStore *store;

@property (nonatomic) NSURLSession *URLSession;

@property (nonatomic) NSNumber *sceneResourceID;

@property (nonatomic) NSNumber *destinationNodeResourceID;

// These properties are created and managed by the controller

@property (nonatomic, readonly) SCNScene *scene;

@property (nonatomic, readonly) id audioStream;

/** Downloads the scene graph's elements. */

-(void)loadSceneWithProgressBlock:(NSGSceneControllerLoadSceneProgressBlock)block;

@end