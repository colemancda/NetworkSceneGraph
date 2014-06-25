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

@protocol NSGSceneControllerDelegate;

@interface NSGSceneController : NSObject

/** The store that will cache the managed object representation of the server's scene's. */

@property (nonatomic, readonly) NOStore *store;

@property (nonatomic, readonly) NSURLSession *URLSession;

@property (nonatomic) id<NSGSceneControllerDelegate> delegate;

-(void)fetchSceneWithResourceID:(NSNumber *)resourceID;

@end

@protocol NSGSceneControllerDelegate <NSObject>

-(void)sceneController:(NSGSceneController *)sceneController didCacheManagedObject:(NSManagedObject *)managedObject withError:(NSError *)error;


@end