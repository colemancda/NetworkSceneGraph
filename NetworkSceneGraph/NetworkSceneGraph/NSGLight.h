//
//  NSGLight.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGMaterialProperty, NSGNode;

@interface NSGLight : NSManagedObject

@property (nonatomic, retain) NSNumber * attenuationEndDistance;
@property (nonatomic, retain) NSNumber * attenuationFalloffExponent;
@property (nonatomic, retain) NSNumber * attenuationStartDistance;
@property (nonatomic, retain) NSNumber * castsShadow;
@property (nonatomic, retain) NSNumber * categoryBitMask;
@property (nonatomic, retain) id color;
@property (nonatomic, retain) NSNumber * orthographicScale;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * shadowBias;
@property (nonatomic, retain) id shadowColor;
@property (nonatomic, retain) NSNumber * shadowMapSize;
@property (nonatomic, retain) NSNumber * shadowMode;
@property (nonatomic, retain) NSNumber * shadowRadius;
@property (nonatomic, retain) NSNumber * shadowSampleCount;
@property (nonatomic, retain) NSNumber * spotInnerAngle;
@property (nonatomic, retain) NSNumber * spotOuterAngle;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSNumber * zFar;
@property (nonatomic, retain) NSNumber * zNear;
@property (nonatomic, retain) NSGMaterialProperty *gobo;
@property (nonatomic, retain) NSGNode *node;

@end
