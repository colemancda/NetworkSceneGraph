//
//  NSGNode.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGNode.h"
#import "NSGCamera.h"
#import "NSGConstraint.h"
#import "NSGGeometry.h"
#import "NSGIKConstraint.h"
#import "NSGIKConstraintMaxAllowedRotationAngleForJoint.h"
#import "NSGLight.h"
#import "NSGLink.h"
#import "NSGLookAtConstraint.h"
#import "NSGMorpher.h"
#import "NSGNode.h"
#import "NSGParticleSystem.h"
#import "NSGPhysicsBody.h"
#import "NSGPhysicsShape.h"
#import "NSGPhysicsVehicleWheel.h"
#import "NSGScene.h"
#import "NSGSkinner.h"
#import "NSGSound.h"


@implementation NSGNode

@dynamic eulerAngles;
@dynamic hidden;
@dynamic opacity;
@dynamic pivot;
@dynamic positionX;
@dynamic positionY;
@dynamic positionZ;
@dynamic resourceID;
@dynamic rotation;
@dynamic scale;
@dynamic orientation;
@dynamic castsShadow;
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
@dynamic physicsBody;
@dynamic physicsShape;
@dynamic physicsVehicleWheelNode;
@dynamic scene;
@dynamic skinnerBones;
@dynamic skinnerSkeleton;
@dynamic sound;
@dynamic skinner;

@end

@implementation SCNNode (NetworkSceneGraphAdditions)

-(void)setValuesForManagedObject:(NSGNode *)managedObject
{
    // set name
    
    if (self.name.integerValue != managedObject.resourceID.integerValue) {
        
        self.name = [NSString stringWithFormat:@"%@", managedObject.resourceID];
    }
    
    // light
    
    if (managedObject.light) {
        
        if (!self.light) {
            
            self.light = [SCNLight light];
        }
        
        [self.light setValuesForManagedObject:managedObject.light];
    }
    
    else {
        self.light = nil;
    }
    
    // camera
    
    if (managedObject.camera) {
        
        if (!self.camera) {
            
            self.camera = [SCNCamera camera];
        }
        
        [self.camera setValuesForManagedObject:managedObject.camera];
    }
    
    else {
        self.camera = nil;
    }
    
    // geometry
    
    if (managedObject.geometry) {
        
        if (!self.geometry) {
            
            self.geometry = [SCNGeometry geometry];
        }
        
        [self.geometry setValuesForManagedObject:managedObject.geometry];
    }
    
    else {
        self.geometry = nil;
    }
    
    // skinner
    
    if (managedObject.skinner) {
        
        if (!self.skinner) {
            
            self.skinner = [SCNSkinner skinnerWithValuesForManagedObject:managedObject.skinner];
        }
        else {
            
            [self.skinner setValuesForManagedObject:managedObject.skinner];
        }
    }
    
    else {
        self.skinner = nil;
    }
    
    // morpher
    
    if (managedObject.morpher) {
        
        if (!self.morpher) {
            
            self.morpher = [[SCNMorpher alloc] init];
        }
        
        [self.morpher setValuesForManagedObject:managedObject.morpher];
    }
    
    else {
        self.morpher = nil;
    }
    
    // physics body
    
    if (managedObject.physicsBody) {
        
        if (!self.physicsBody) {
            
            self.physicsBody = [SCNPhysicsBody kinematicBody];
        }
        
        [self.physicsBody setValuesForManagedObject:managedObject.physicsBody];
    }
    
    else {
        self.physicsBody = nil;
    }
    
    // child nodes
    
    // remove extra nodes first
    
    if (managedObject.childNodes.count < self.childNodes.count) {
        
        NSUInteger extraNodes = self.childNodes.count - managedObject.childNodes.count;
        
        for (int i = 0; i < extraNodes; i++) {
            
            SCNNode *node = self.childNodes[i];
            
            [node removeFromParentNode];
        }
    }
    
    for (NSGNode *nodeManagedObject in managedObject.childNodes) {
        
        NSUInteger index = [managedObject.childNodes indexOfObject:nodeManagedObject];
        
        // get current scenekit node
        
        if (index <= self.childNodes.count - 1) {
            
            SCNNode *currentNode = self.childNodes[index];
            
            [currentNode setValuesForManagedObject:nodeManagedObject];
        }
        
        else {
            
            SCNNode *newNode = [SCNNode node];
            
            [newNode setValuesForManagedObject:nodeManagedObject];
            
            [self addChildNode:newNode];
        }
    }
    
    // set scalar values
    
    self.position = SCNVector3Make(managedObject.positionX.doubleValue,
                                   managedObject.positionY.doubleValue,
                                   managedObject.positionZ.doubleValue);
    
    self.rotation = managedObject.rotation.SCNVector4Value;
    
    self.orientation = managedObject.orientation.SCNVector4Value;
    
    self.eulerAngles = managedObject.eulerAngles.SCNVector3Value;
    
    self.scale = managedObject.scale.SCNVector3Value;
    
    self.pivot = managedObject.pivot.SCNMatrix4Value;
    
    self.hidden = managedObject.hidden.boolValue;
    
    self.opacity = managedObject.opacity.doubleValue;
    
    self.castsShadow = managedObject.castsShadow.boolValue;
    
    
}

@end
