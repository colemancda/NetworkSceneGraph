//
//  NSGGeometryElement.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@class NSGGeometry;

@interface NSGGeometryElement : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * bytesPerIndex;
@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSNumber * primitiveCount;
@property (nonatomic, retain) NSNumber * primitiveType;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGGeometry *geometry;

// Transient

@property (nonatomic, readonly) SCNGeometryElement *geometryElement;


@end
