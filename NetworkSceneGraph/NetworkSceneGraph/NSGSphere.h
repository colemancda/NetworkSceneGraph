//
//  NSGSphere.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGSphere : NSGGeometry

@property (nonatomic, retain) NSNumber * geodesic;
@property (nonatomic, retain) NSNumber * radius;
@property (nonatomic, retain) NSNumber * segmentCount;

@end
