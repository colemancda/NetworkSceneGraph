//
//  NSGGeometryElement.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry;

@interface NSGGeometryElement : NSManagedObject

@property (nonatomic, retain) NSNumber * bytesPerIndex;
@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSNumber * primitiveCount;
@property (nonatomic, retain) NSNumber * primitiveType;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGGeometry *geometry;

@end
