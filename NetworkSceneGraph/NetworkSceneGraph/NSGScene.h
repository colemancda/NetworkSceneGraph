//
//  NSGScene.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <SceneKit/SceneKit.h>

@class NSGMaterialProperty, NSGNode, NSGPhysicsWorld;

@interface NSGScene : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGMaterialProperty *background;
@property (nonatomic, retain) NSSet *nodes;
@property (nonatomic, retain) NSGPhysicsWorld *physicsWorld;
@end

@interface NSGScene (CoreDataGeneratedAccessors)

- (void)addNodesObject:(NSGNode *)value;
- (void)removeNodesObject:(NSGNode *)value;
- (void)addNodes:(NSSet *)values;
- (void)removeNodes:(NSSet *)values;

@end

@interface SCNScene (NetworkSceneGraphAdditions)

-(void)setValuesForManagedObject:(NSGScene *)managedObject;

@end