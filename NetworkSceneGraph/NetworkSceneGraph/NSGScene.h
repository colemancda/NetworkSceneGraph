//
//  NSGScene.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@import SceneKit;

@class NSGMaterialProperty, NSGNode, NSGPhysicsWorld;

@interface NSGScene : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGMaterialProperty *background;
@property (nonatomic, retain) NSOrderedSet *nodes;
@property (nonatomic, retain) NSGPhysicsWorld *physicsWorld;
@end

@interface NSGScene (CoreDataGeneratedAccessors)

- (void)insertObject:(NSGNode *)value inNodesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromNodesAtIndex:(NSUInteger)idx;
- (void)insertNodes:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeNodesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInNodesAtIndex:(NSUInteger)idx withObject:(NSGNode *)value;
- (void)replaceNodesAtIndexes:(NSIndexSet *)indexes withNodes:(NSArray *)values;
- (void)addNodesObject:(NSGNode *)value;
- (void)removeNodesObject:(NSGNode *)value;
- (void)addNodes:(NSOrderedSet *)values;
- (void)removeNodes:(NSOrderedSet *)values;
@end

@interface SCNScene (NetworkSceneGraphAdditions)

+(instancetype)sceneWithValuesForManagedObject:(NSGScene *)managedObject;

-(void)setValuesForManagedObject:(NSGScene *)managedObject;

@end