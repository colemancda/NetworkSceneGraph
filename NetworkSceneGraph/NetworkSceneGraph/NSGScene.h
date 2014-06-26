//
//  NSGScene.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGMaterialProperty, NSGNode;

@interface NSGScene : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGMaterialProperty *background;
@property (nonatomic, retain) NSSet *nodes;
@property (nonatomic, retain) NSManagedObject *physicsWorld;
@end

@interface NSGScene (CoreDataGeneratedAccessors)

- (void)addNodesObject:(NSGNode *)value;
- (void)removeNodesObject:(NSGNode *)value;
- (void)addNodes:(NSSet *)values;
- (void)removeNodes:(NSSet *)values;

@end
