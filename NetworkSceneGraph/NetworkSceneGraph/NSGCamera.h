//
//  NSGCamera.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode;

@interface NSGCamera : NSManagedObject

@property (nonatomic, retain) NSNumber * aperture;
@property (nonatomic, retain) NSNumber * automaticallyAdjustsZRange;
@property (nonatomic, retain) NSNumber * categoryBitmask;
@property (nonatomic, retain) NSNumber * focalBlurRadius;
@property (nonatomic, retain) NSNumber * focalDistance;
@property (nonatomic, retain) NSNumber * focalSize;
@property (nonatomic, retain) NSNumber * orthographicScale;
@property (nonatomic, retain) NSNumber * projectionTransformW;
@property (nonatomic, retain) NSNumber * projectionTransformX;
@property (nonatomic, retain) NSNumber * projectionTransformY;
@property (nonatomic, retain) NSNumber * projectionTransformZ;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * usesOrthographicProjection;
@property (nonatomic, retain) NSNumber * xFov;
@property (nonatomic, retain) NSNumber * yFov;
@property (nonatomic, retain) NSNumber * zFar;
@property (nonatomic, retain) NSNumber * zNear;
@property (nonatomic, retain) NSGNode *node;

@end
