//
//  NSGFloor.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGFloor : NSGGeometry

@property (nonatomic, retain) NSNumber * reflectivity;
@property (nonatomic, retain) NSNumber * reflectionFalloffStart;
@property (nonatomic, retain) NSNumber * reflectionFalloffEnd;

@end
