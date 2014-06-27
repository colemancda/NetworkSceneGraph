//
//  NSGGeometryElement.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGGeometryElement.h"
#import "NSGGeometry.h"


@implementation NSGGeometryElement

@dynamic bytesPerIndex;
@dynamic data;
@dynamic primitiveCount;
@dynamic primitiveType;
@dynamic resourceID;
@dynamic geometry;
@dynamic geometryEdgeCreasesElement;

@end

@implementation SCNGeometryElement (NetworkSceneGraphAdditions)

+(instancetype)geometryElementWithValuesForManagedObject:(NSGGeometryElement *)managedObject
{
    return [SCNGeometryElement geometryElementWithData:managedObject.data
                                         primitiveType:managedObject.primitiveType.integerValue
                                        primitiveCount:managedObject.primitiveCount.integerValue
                                         bytesPerIndex:managedObject.bytesPerIndex.integerValue];
}

@end