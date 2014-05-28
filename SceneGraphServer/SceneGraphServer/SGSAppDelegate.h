//
//  SGSAppDelegate.h
//  SceneGraphServer
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@import SceneKit;

@interface SGSAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet SCNView *sceneView;

@end
