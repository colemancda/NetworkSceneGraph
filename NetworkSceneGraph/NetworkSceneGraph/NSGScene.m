//
//  NSGScene.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGScene.h"
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
    if (managedObject.background) {
        
        [self.background setValuesForManagedObject:managedObject.background];
    }
    
}

@end