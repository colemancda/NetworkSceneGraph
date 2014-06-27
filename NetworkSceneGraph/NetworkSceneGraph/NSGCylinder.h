//
//  NSGCylinder.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGCylinder : NSGGeometry

@property (nonatomic, retain) NSNumber * height;
@property (nonatomic, retain) NSNumber * heightSegmentCount;
@property (nonatomic, retain) NSNumber * radialSegmentCount;
@property (nonatomic, retain) NSNumber * radius;

@end
