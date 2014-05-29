//
//  NSGScene.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@class NSGMaterialProperty, NSGNode;

@interface NSGScene : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGMaterialProperty *background;
@property (nonatomic, retain) NSSet *nodes;
@property (nonatomic, retain) NSManagedObject *pointOfView;

// Transient

/** This scene is lazily initialized based on the managed object context object graph. After is it initialized it will be constantly updated to reflect the managed object context. You can also import a scene into the managed object context using this property's setter method.*/

@property (nonatomic, readonly) SCNScene *scene;

@end

@interface NSGScene (CoreDataGeneratedAccessors)

- (void)addNodesObject:(NSGNode *)value;
- (void)removeNodesObject:(NSGNode *)value;
- (void)addNodes:(NSSet *)values;
- (void)removeNodes:(NSSet *)values;

@end
