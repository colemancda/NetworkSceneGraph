//
//  NSGIKConstraintMaxAllowedRotationAngleForJoint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGIKConstraint, NSGNode;

@interface NSGIKConstraintMaxAllowedRotationAngleForJoint : NSManagedObject

@property (nonatomic, retain) NSNumber * angle;
@property (nonatomic, retain) NSGIKConstraint *constraint;
@property (nonatomic, retain) NSGNode *node;

@end
