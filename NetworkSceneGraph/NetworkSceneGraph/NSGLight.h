//
//  NSGLight.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@class NSGNode;

@interface NSGLight : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * castsShadow;
@property (nonatomic, retain) NSString * color;
@property (nonatomic, retain) NSNumber * lightAttenuationEnd;
@property (nonatomic, retain) NSNumber * lightAttenuationFalloffExponent;
@property (nonatomic, retain) NSNumber * lightAttenuationStart;
@property (nonatomic, retain) NSNumber * lightShadowFarClipping;
@property (nonatomic, retain) NSNumber * lightShadowNearClipping;
@property (nonatomic, retain) NSNumber * lightSpotInnerAngle;
@property (nonatomic, retain) NSNumber * lightSpotOuterAngle;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSString * shadowColor;
@property (nonatomic, retain) NSNumber * shadowRadius;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSGNode *node;

// Transient

@property (nonatomic, readonly) SCNLight *light;

@end
