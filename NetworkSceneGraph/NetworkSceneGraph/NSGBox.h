//
//  NSGBox.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGBox : NSGGeometry

@property (nonatomic, retain) NSNumber * chamferRadius;
@property (nonatomic, retain) NSNumber * chamferSegmentCount;
@property (nonatomic, retain) NSNumber * height;
@property (nonatomic, retain) NSNumber * heightSegmentCount;
@property (nonatomic, retain) NSNumber * length;
@property (nonatomic, retain) NSNumber * lengthSegmentCount;
@property (nonatomic, retain) NSNumber * width;
@property (nonatomic, retain) NSNumber * widthSegmentCount;

@end
