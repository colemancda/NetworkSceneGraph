//
//  NSGPhysicsNoiseField.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGPhysicsField.h"


@interface NSGPhysicsNoiseField : NSGPhysicsField

@property (nonatomic, retain) NSNumber * smoothness;
@property (nonatomic, retain) NSNumber * speed;

@end
