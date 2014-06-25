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

/** The store that will cache the managed object representation of the server's scene's. */

@property (nonatomic) NOStore *store;

@property (nonatomic) NSURLSession *URLSession;

@property (nonatomic) NSNumber *sceneResourceID;

@property (nonatomic) id<NSGSceneControllerDelegate> delegate;

-(void)fetchScene;

@end

/** Delegate protocol for incrementally downloading and caching the network scene graph. The delegate methods will be called on the same queue as the controller's store's managed object context. */

@protocol NSGSceneControllerDelegate <NSObject>

-(void)sceneController:(NSGSceneController *)sceneController didFetchScene:(NSGScene *)scene withError:(NSError *)error;

-(void)sceneController:(NSGSceneController *)sceneController didFetchSceneGraphElement:(NSManagedObject *)element withError:(NSError *)error;


@end