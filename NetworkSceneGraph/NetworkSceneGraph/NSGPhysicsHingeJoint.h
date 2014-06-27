//
//  NSGPhysicsHingeJoint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGPhysicsBehavior.h"

@class NSGPhysicsBody;

@interface NSGPhysicsHingeJoint : NSGPhysicsBehavior

@property (nonatomic, retain) NSString * anchorA;
@property (nonatomic, retain) NSString * anchorB;
@property (nonatomic, retain) NSString * axisA;
@property (nonatomic, retain) NSString * axisB;
@property (nonatomic, retain) NSGPhysicsBody *bodyA;
@property (nonatomic, retain) NSGPhysicsBody *bodyB;

@end
