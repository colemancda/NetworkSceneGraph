//
//  NSGLight.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGLight.h"
#import "NSGMaterialProperty.h"
#import "NSGNode.h"


@implementation NSGLight

@dynamic type;
@dynamic shadowRadius;
@dynamic shadowColor;
@dynamic castsShadow;
@dynamic color;
@dynamic lightAttenuationStart;
@dynamic lightAttenuationEnd;
@dynamic lightAttenuationFalloffExponent;
@dynamic lightSpotInnerAngle;
@dynamic lightSpotOuterAngle;
@dynamic lightShadowFarClipping;
@dynamic lightShadowNearClipping;
@dynamic resourceID;
@dynamic node;
@dynamic gobo;

@end
