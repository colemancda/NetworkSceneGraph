//
//  NSGPhysicsField.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface NSGPhysicsField : NSManagedObject

@property (nonatomic, retain) NSNumber * active;
@property (nonatomic, retain) NSNumber * categoryBitMask;
@property (nonatomic, retain) NSString * direction;
@property (nonatomic, retain) NSNumber * exclusive;
@property (nonatomic, retain) NSNumber * falloffExponent;
@property (nonatomic, retain) NSString * halfExtent;
@property (nonatomic, retain) NSNumber * minimumDistance;
@property (nonatomic, retain) NSString * offset;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * scope;
@property (nonatomic, retain) NSNumber * strength;
@property (nonatomic, retain) NSNumber * usesEllipsoidalExtent;

@end
