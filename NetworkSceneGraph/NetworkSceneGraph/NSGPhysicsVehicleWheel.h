//
//  NSGPhysicsVehicleWheel.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode, NSGPhysicsVehicle;

@interface NSGPhysicsVehicleWheel : NSManagedObject

@property (nonatomic, retain) NSString * axle;
@property (nonatomic, retain) NSString * connectionPosition;
@property (nonatomic, retain) NSNumber * frictionSlip;
@property (nonatomic, retain) NSNumber * maximumSuspensionForce;
@property (nonatomic, retain) NSNumber * maximumSuspensionTravel;
@property (nonatomic, retain) NSNumber * radius;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSString * steeringAxis;
@property (nonatomic, retain) NSNumber * suspensionCompression;
@property (nonatomic, retain) NSNumber * suspensionDamping;
@property (nonatomic, retain) NSNumber * suspensionRestLength;
@property (nonatomic, retain) NSNumber * suspensionStiffness;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGPhysicsVehicle *vehicle;

@end
