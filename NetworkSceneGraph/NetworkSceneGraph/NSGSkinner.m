//
//  NSGSkinner.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSkinner.h"
#import "NSGGeometry.h"
#import "NSGGeometrySource.h"
#import "NSGNode.h"


@implementation NSGSkinner

@dynamic baseGeometryBindTransform;
@dynamic boneInverseBindTransforms;
@dynamic resourceID;
@dynamic baseGeometry;
@dynamic boneIndices;
@dynamic bones;
@dynamic boneWeights;
@dynamic skeleton;
@dynamic node;

@end

@implementation SCNSkinner (NetworkSceneGraphAdditions)

+(instancetype)skinnerWithValuesForManagedObject:(NSGSkinner *)managedObject
{
    SCNGeometry *baseGeometry = [SCNGeometry ]
    
    return [SCNSkinner skinnerWithBaseGeometry:<#(SCNGeometry *)#>
                                         bones:<#(NSArray *)#>
                     boneInverseBindTransforms:managedObject.boneInverseBindTransforms
                                   boneWeights:<#(SCNGeometrySource *)#>
                                   boneIndices:<#(SCNGeometrySource *)#>];
}

@end