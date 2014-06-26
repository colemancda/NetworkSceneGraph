//
//  NSGPhysicsBody.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode, NSGPhysicsBallSocketJoint, NSGPhysicsHingeJoint, NSGPhysicsShape, NSGPhysicsSliderJoint;

@interface NSGPhysicsBody : NSManagedObject

@property (nonatomic, retain) NSNumber * allowsResting;
@property (nonatomic, retain) NSNumber * angularDamping;
@property (nonatomic, retain) NSString * angularVelocity;
@property (nonatomic, retain) NSString * angularVelocityFactor;
@property (nonatomic, retain) NSNumber * categoryBitMask;
@property (nonatomic, retain) NSNumber * collisionBitMask;
@property (nonatomic, retain) NSNumber * damping;
@property (nonatomic, retain) NSNumber * friction;
@property (nonatomic, retain) NSNumber * mass;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * restitution;
@property (nonatomic, retain) NSNumber * rollingFriction;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSString * velocity;
@property (nonatomic, retain) NSString * velocityFactor;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGPhysicsBallSocketJoint *physicsBallSocketJointBodyA;
@property (nonatomic, retain) NSGPhysicsBallSocketJoint *physicsBallSocketJointBodyB;
@property (nonatomic, retain) NSGPhysicsHingeJoint *physicsHingeJointBodyA;
@property (nonatomic, retain) NSGPhysicsHingeJoint *physicsHingeJointBodyB;
@property (nonatomic, retain) NSGPhysicsShape *physicsShape;
@property (nonatomic, retain) NSGPhysicsSliderJoint *physicsSliderJointBodyA;
@property (nonatomic, retain) NSGPhysicsSliderJoint *physicsSliderJointBodyB;
@property (nonatomic, retain) NSManagedObject *vehicle;

@end
