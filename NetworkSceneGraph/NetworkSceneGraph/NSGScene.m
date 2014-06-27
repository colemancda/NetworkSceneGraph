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

@implementation SCNScene (NetworkSceneGraphAdditions)

-(void)configureWithManagedObject:(NSGScene *)managedObject
{
    
    
}

@end

@interface NSGScene (PrimitiveAccessors)

-(void)setPrimitiveBackground:(NSGMaterialProperty *)background;

@end

@implementation NSGScene

@dynamic resourceID;
@dynamic background;
@dynamic nodes;
@dynamic physicsWorld;

@synthesize transientValue = _transientValue;

-(void)awakeFromInsert
{
    [super awakeFromInsert];
    
    _transientValue = [SCNScene scene];
    
    
}

-(void)awakeFromFetch
{
    [super awakeFromFetch];
    
    _transientValue = [SCNScene scene];
    
    
}

#pragma mark - Custom Accessors

-(void)setBackground:(NSGMaterialProperty *)background
{
    [self willChangeValueForKey:@"background"];
    
    [self setPrimitiveBackground:background];
    
    
    
}


@end
