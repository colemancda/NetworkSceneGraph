//
//  NSGGeometrySource.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry;

@interface NSGGeometrySource : NSManagedObject

@property (nonatomic, retain) NSNumber * bytesPerComponent;
@property (nonatomic, retain) NSNumber * componentsPerVector;
@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSNumber * dataOffset;
@property (nonatomic, retain) NSNumber * dataStride;
@property (nonatomic, retain) NSNumber * floatComponents;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSString * semantic;
@property (nonatomic, retain) NSNumber * vectorCount;
@property (nonatomic, retain) NSGGeometry *geometry;

@end
