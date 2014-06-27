//
//  NSGGeometrySource.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGGeometrySource.h"
#import "NSGGeometry.h"
#import "NSGSkinner.h"


@implementation NSGGeometrySource

@dynamic bytesPerComponent;
@dynamic componentsPerVector;
@dynamic data;
@dynamic dataOffset;
@dynamic dataStride;
@dynamic floatComponents;
@dynamic resourceID;
@dynamic semantic;
@dynamic vectorCount;
@dynamic geometry;
@dynamic geometryEdgeCreasesSource;
@dynamic skinnerBoneIndices;
@dynamic skinnerBoneWeights;

@end

@implementation SCNGeometrySource (NetworkSceneGraphAdditions)

+(instancetype)geometrySourceWithValuesForManagedObject:(NSGGeometrySource *)managedObject
{
    return [SCNGeometrySource geometrySourceWithData:managedObject.data
                                            semantic:managedObject.semantic
                                         vectorCount:managedObject.vectorCount.integerValue
                                     floatComponents:managedObject.floatComponents.boolValue
                                 componentsPerVector:managedObject.componentsPerVector.integerValue
                                   bytesPerComponent:managedObject.bytesPerComponent.integerValue
                                          dataOffset:managedObject.dataOffset.integerValue
                                          dataStride:managedObject.dataStride.integerValue];
}

@end