//
//  NSGPhysicsSliderJoint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGPhysicsBehavior.h"

@class NSGPhysicsBody;

@interface NSGPhysicsSliderJoint : NSGPhysicsBehavior

@property (nonatomic, retain) NSString * anchorA;
@property (nonatomic, retain) NSString * anchorB;
@property (nonatomic, retain) NSString * axisA;
@property (nonatomic, retain) NSString * axisB;
@property (nonatomic, retain) NSNumber * maximumAngularLimit;
@property (nonatomic, retain) NSNumber * maximumLinearLimit;
@property (nonatomic, retain) NSNumber * minimumAngularLimit;
@property (nonatomic, retain) NSNumber * minimumLinearLimit;
@property (nonatomic, retain) NSNumber * motorMaximumForce;
@property (nonatomic, retain) NSNumber * motorMaximumTorque;
@property (nonatomic, retain) NSNumber * motorTargetAngularVelocity;
@property (nonatomic, retain) NSNumber * motorTargetLinearVelocity;
@property (nonatomic, retain) NSGPhysicsBody *bodyA;
@property (nonatomic, retain) NSGPhysicsBody *bodyB;

@end
