//
//  SGSAppDelegate.h
//  SceneGraphServer
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <SceneKit/SceneKit.h>
#import <NetworkSceneGraph/NetworkSceneGraph.h>

@interface SGSAppDelegate : NSObject <NSApplicationDelegate>

#pragma amrk - IB Outlets

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet SCNView *sceneView;

#pragma mark - Properties

@property (nonatomic, readonly) NOServer *server;

@property (nonatomic, readonly) NOStore *store;

@end
