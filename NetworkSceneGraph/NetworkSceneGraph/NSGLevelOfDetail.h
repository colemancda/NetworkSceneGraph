//
//  NSGLevelOfDetail.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry;

@interface NSGLevelOfDetail : NSManagedObject

@property (nonatomic, retain) NSNumber * screenSpaceRadius;
@property (nonatomic, retain) NSNumber * worldSpaceDistance;
@property (nonatomic, retain) NSGGeometry *geometry;

@end
