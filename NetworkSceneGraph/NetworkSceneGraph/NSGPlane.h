//
//  NSGPlane.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGPlane : NSGGeometry

@property (nonatomic, retain) NSNumber * cornerRadius;
@property (nonatomic, retain) NSNumber * cornerSegmentCount;
@property (nonatomic, retain) NSNumber * height;
@property (nonatomic, retain) NSNumber * heightSegmentCount;
@property (nonatomic, retain) NSNumber * width;
@property (nonatomic, retain) NSNumber * widthSegmentCount;

@end
