//
//  NSGPhysicsWorld.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <SceneKit/SceneKit.h>

@class NSGPhysicsBehavior, NSGScene;

@interface NSGPhysicsWorld : NSManagedObject

@property (nonatomic, retain) NSString * gravity;
@property (nonatomic, retain) NSNumber * speed;
@property (nonatomic, retain) NSNumber * timeStep;
@property (nonatomic, retain) NSSet *behaviors;
@property (nonatomic, retain) NSGScene *scene;

@property (nonatomic, readonly) SCNPhysicsWorld *transientValue; // not KVO compliant

@end

@interface NSGPhysicsWorld (CoreDataGeneratedAccessors)

- (void)addBehaviorsObject:(NSGPhysicsBehavior *)value;
- (void)removeBehaviorsObject:(NSGPhysicsBehavior *)value;
- (void)addBehaviors:(NSSet *)values;
- (void)removeBehaviors:(NSSet *)values;

@end
