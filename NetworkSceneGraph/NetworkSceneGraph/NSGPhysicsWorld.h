//
//  NSGPhysicsWorld.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGPhysicsBehavior, NSGScene;

@interface NSGPhysicsWorld : NSManagedObject

@property (nonatomic, retain) NSValue *gravity;
@property (nonatomic, retain) NSNumber * speed;
@property (nonatomic, retain) NSNumber * timeStep;
@property (nonatomic, retain) NSSet *behaviors;
@property (nonatomic, retain) NSGScene *scene;
@end

@interface NSGPhysicsWorld (CoreDataGeneratedAccessors)

- (void)addBehaviorsObject:(NSGPhysicsBehavior *)value;
- (void)removeBehaviorsObject:(NSGPhysicsBehavior *)value;
- (void)addBehaviors:(NSSet *)values;
- (void)removeBehaviors:(NSSet *)values;

@end

@interface SCNPhysicsWorld (NetworkSceneGraphAdditions)

-(void)setValuesForManagedObject:(NSGPhysicsWorld *)managedObject;

@end