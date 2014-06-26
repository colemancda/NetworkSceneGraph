//
//  NSGPhysicsBody.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGPhysicsBody.h"
#import "NSGNode.h"
#import "NSGPhysicsBallSocketJoint.h"
#import "NSGPhysicsHingeJoint.h"
#import "NSGPhysicsShape.h"
#import "NSGPhysicsSliderJoint.h"


@implementation NSGPhysicsBody

@dynamic allowsResting;
@dynamic angularDamping;
@dynamic angularVelocity;
@dynamic angularVelocityFactor;
@dynamic categoryBitMask;
@dynamic collisionBitMask;
@dynamic damping;
@dynamic friction;
@dynamic mass;
@dynamic resourceID;
@dynamic restitution;
@dynamic rollingFriction;
@dynamic type;
@dynamic velocity;
@dynamic velocityFactor;
@dynamic node;
@dynamic physicsBallSocketJointBodyA;
@dynamic physicsBallSocketJointBodyB;
@dynamic physicsHingeJointBodyA;
@dynamic physicsHingeJointBodyB;
@dynamic physicsShape;
@dynamic physicsSliderJointBodyA;
@dynamic physicsSliderJointBodyB;
@dynamic vehicle;

@end
