//
//  NSGCamera.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@class NSGNode, NSGScene;

@interface NSGCamera : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * zNear;
@property (nonatomic, retain) NSNumber * zFar;
@property (nonatomic, retain) NSNumber * yFov;
@property (nonatomic, retain) NSNumber * xFov;
@property (nonatomic, retain) NSNumber * usesOrthographicProjection;
@property (nonatomic, retain) NSNumber * orthographicScale;
@property (nonatomic, retain) NSNumber * focalSize;
@property (nonatomic, retain) NSNumber * focalDistance;
@property (nonatomic, retain) NSNumber * focalBlurRadius;
@property (nonatomic, retain) NSNumber * automaticallyAdjustsZRange;
@property (nonatomic, retain) NSNumber * aperture;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGScene *pointOfViewScene;

// Transient

@property (nonatomic, readonly) SCNCamera *camera;

@end
