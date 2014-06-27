//
//  NSGIKConstraint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGConstraint.h"

@class NSGIKConstraintMaxAllowedRotationAngleForJoint, NSGNode;

@interface NSGIKConstraint : NSGConstraint

@property (nonatomic, retain) NSNumber * targetPositionX;
@property (nonatomic, retain) NSNumber * targetPositionY;
@property (nonatomic, retain) NSNumber * targetPositionZ;
@property (nonatomic, retain) NSGNode *chainRootNode;
@property (nonatomic, retain) NSGIKConstraintMaxAllowedRotationAngleForJoint *maxAllowedRotationAngles;

@end
