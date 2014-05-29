//
//  NOAPICachedStore+SceneKitImport.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@interface NOAPICachedStore (SceneKitImport)

-(void)importScene:(SCNScene *)scene;

@end
