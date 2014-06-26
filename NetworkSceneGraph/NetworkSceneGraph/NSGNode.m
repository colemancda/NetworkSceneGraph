//
//  NSGNode.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGNode.h"
#import "NSGCamera.h"
#import "NSGGeometry.h"
#import "NSGLight.h"
#import "NSGLink.h"
#import "NSGLookAtConstraint.h"
#import "NSGMorpher.h"
#import "NSGNode.h"
#import "NSGParticleSystem.h"
#import "NSGScene.h"
#import "NSGSkinner.h"
#import "NSGSound.h"


@implementation NSGNode

@dynamic categoryBitMask;
@dynamic eulerAnglesX;
@dynamic eulerAnglesY;
@dynamic eulerAnglesZ;
@dynamic hidden;
@dynamic opacity;
@dynamic orientationW;
@dynamic orientationX;
@dynamic orientationY;
@dynamic orientationZ;
@dynamic paused;
@dynamic pivot;
@dynamic positionX;
@dynamic positionY;
@dynamic positionZ;
@dynamic resourceID;
@dynamic rotationW;
@dynamic rotationX;
@dynamic rotationY;
@dynamic rotationZ;
@dynamic scaleX;
@dynamic scaleY;
@dynamic scaleZ;
@dynamic camera;
@dynamic childNodes;
@dynamic constraints;
@dynamic geometry;
@dynamic ikConstraintChainRootNode;
@dynamic ikConstraintMaxAllowedRotationAngleForJoint;
@dynamic light;
@dynamic link;
@dynamic lookAtConstraintTarget;
@dynamic morpher;
@dynamic parentNode;
@dynamic particleSystemColliderNodes;
@dynamic physicsbody;
@dynamic physicsShape;
@dynamic physicsVehicleWheelNode;
@dynamic scene;
@dynamic skinnerBones;
@dynamic skinnerSkeleton;
@dynamic sound;

@end
