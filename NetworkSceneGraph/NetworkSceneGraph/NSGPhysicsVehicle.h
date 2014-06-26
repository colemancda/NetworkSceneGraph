//
//  NSGPhysicsVehicle.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGPhysicsBehavior.h"

@class NSGPhysicsBody, NSGPhysicsVehicleWheel;

@interface NSGPhysicsVehicle : NSGPhysicsBehavior

@property (nonatomic, retain) NSNumber * speedInKilometersPerHour;
@property (nonatomic, retain) NSGPhysicsBody *chassisBody;
@property (nonatomic, retain) NSSet *wheels;
@end

@interface NSGPhysicsVehicle (CoreDataGeneratedAccessors)

- (void)addWheelsObject:(NSGPhysicsVehicleWheel *)value;
- (void)removeWheelsObject:(NSGPhysicsVehicleWheel *)value;
- (void)addWheels:(NSSet *)values;
- (void)removeWheels:(NSSet *)values;

@end
