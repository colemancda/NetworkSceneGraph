//
//  NSGScene.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGScene.h"
#import "NSGMaterialProperty.h"
#import "NSGNode.h"
#import "NSGPhysicsWorld.h"
#import "NSGMaterialProperty.h"
#import "NSGNode.h"
#import "NSGPhysicsWorld.h"

@implementation NSGScene

@dynamic resourceID;
@dynamic background;
@dynamic nodes;
@dynamic physicsWorld;

@end

@implementation SCNScene (NetworkSceneGraphAdditions)

-(void)setValuesForManagedObject:(NSGScene *)managedObject
{
    // background
    
    if (managedObject.background) {
        
        [self.background setValuesForManagedObject:managedObject.background];
    }
    
    // physics world
    
    if (managedObject.physicsWorld) {
        
        [self.physicsWorld setValuesForManagedObject:managedObject.physicsWorld];
    }
    
    // nodes
    
    for (NSGNode *nodeManagedObject in managedObject.nodes) {
        
        NSUInteger index = [managedObject.nodes indexOfObject:nodeManagedObject];
        
        // get current scenekit node
        
        if (index <= self.rootNode.childNodes.count - 1) {
            
            SCNNode *currentNode = self.rootNode.childNodes[index];
            
            [currentNode setValuesForManagedObject:nodeManagedObject];
        }
        
        else {
            
            SCNNode *newNode = [SCNNode node];
            
            [newNode setValuesForManagedObject:nodeManagedObject];
            
            [self.rootNode addChildNode:newNode];
        }
        
        
    }
    
}

@end