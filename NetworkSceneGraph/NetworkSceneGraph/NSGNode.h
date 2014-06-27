//
//  NSGNode.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGCamera, NSGConstraint, NSGGeometry, NSGIKConstraint, NSGIKConstraintMaxAllowedRotationAngleForJoint, NSGLight, NSGLink, NSGLookAtConstraint, NSGMorpher, NSGNode, NSGParticleSystem, NSGPhysicsBody, NSGPhysicsShape, NSGPhysicsVehicleWheel, NSGScene, NSGSkinner, NSGSound;

@interface NSGNode : NSManagedObject

@property (nonatomic, retain) NSNumber * eulerAnglesX;
@property (nonatomic, retain) NSNumber * eulerAnglesY;
@property (nonatomic, retain) NSNumber * eulerAnglesZ;
@property (nonatomic, retain) NSNumber * hidden;
@property (nonatomic, retain) NSNumber * opacity;
@property (nonatomic, retain) NSNumber * orientationW;
@property (nonatomic, retain) NSNumber * orientationX;
@property (nonatomic, retain) NSNumber * orientationY;
@property (nonatomic, retain) NSNumber * orientationZ;
@property (nonatomic, retain) id pivot;
@property (nonatomic, retain) NSNumber * positionX;
@property (nonatomic, retain) NSNumber * positionY;
@property (nonatomic, retain) NSNumber * positionZ;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * rotationW;
@property (nonatomic, retain) NSNumber * rotationX;
@property (nonatomic, retain) NSNumber * rotationY;
@property (nonatomic, retain) NSNumber * rotationZ;
@property (nonatomic, retain) NSNumber * scaleX;
@property (nonatomic, retain) NSNumber * scaleY;
@property (nonatomic, retain) NSNumber * scaleZ;
@property (nonatomic, retain) id transform;
@property (nonatomic, retain) id orientation;
@property (nonatomic, retain) id worldTransform;
@property (nonatomic, retain) NSNumber * castsShadow;
@property (nonatomic, retain) NSGCamera *camera;
@property (nonatomic, retain) NSOrderedSet *childNodes;
@property (nonatomic, retain) NSOrderedSet *constraints;
@property (nonatomic, retain) NSGGeometry *geometry;
@property (nonatomic, retain) NSSet *ikConstraintChainRootNode;
@property (nonatomic, retain) NSSet *ikConstraintMaxAllowedRotationAngleForJoint;
@property (nonatomic, retain) NSGLight *light;
@property (nonatomic, retain) NSGLink *link;
@property (nonatomic, retain) NSSet *lookAtConstraintTarget;
@property (nonatomic, retain) NSGMorpher *morpher;
@property (nonatomic, retain) NSGNode *parentNode;
@property (nonatomic, retain) NSSet *particleSystemColliderNodes;
@property (nonatomic, retain) NSGPhysicsBody *physicsbody;
@property (nonatomic, retain) NSGPhysicsShape *physicsShape;
@property (nonatomic, retain) NSGPhysicsVehicleWheel *physicsVehicleWheelNode;
@property (nonatomic, retain) NSGScene *scene;
@property (nonatomic, retain) NSGSkinner *skinnerBones;
@property (nonatomic, retain) NSGSkinner *skinnerSkeleton;
@property (nonatomic, retain) NSGSound *sound;
@end

@interface NSGNode (CoreDataGeneratedAccessors)

- (void)insertObject:(NSGNode *)value inChildNodesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromChildNodesAtIndex:(NSUInteger)idx;
- (void)insertChildNodes:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeChildNodesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInChildNodesAtIndex:(NSUInteger)idx withObject:(NSGNode *)value;
- (void)replaceChildNodesAtIndexes:(NSIndexSet *)indexes withChildNodes:(NSArray *)values;
- (void)addChildNodesObject:(NSGNode *)value;
- (void)removeChildNodesObject:(NSGNode *)value;
- (void)addChildNodes:(NSOrderedSet *)values;
- (void)removeChildNodes:(NSOrderedSet *)values;
- (void)insertObject:(NSGConstraint *)value inConstraintsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromConstraintsAtIndex:(NSUInteger)idx;
- (void)insertConstraints:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeConstraintsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInConstraintsAtIndex:(NSUInteger)idx withObject:(NSGConstraint *)value;
- (void)replaceConstraintsAtIndexes:(NSIndexSet *)indexes withConstraints:(NSArray *)values;
- (void)addConstraintsObject:(NSGConstraint *)value;
- (void)removeConstraintsObject:(NSGConstraint *)value;
- (void)addConstraints:(NSOrderedSet *)values;
- (void)removeConstraints:(NSOrderedSet *)values;
- (void)addIkConstraintChainRootNodeObject:(NSGIKConstraint *)value;
- (void)removeIkConstraintChainRootNodeObject:(NSGIKConstraint *)value;
- (void)addIkConstraintChainRootNode:(NSSet *)values;
- (void)removeIkConstraintChainRootNode:(NSSet *)values;

- (void)addIkConstraintMaxAllowedRotationAngleForJointObject:(NSGIKConstraintMaxAllowedRotationAngleForJoint *)value;
- (void)removeIkConstraintMaxAllowedRotationAngleForJointObject:(NSGIKConstraintMaxAllowedRotationAngleForJoint *)value;
- (void)addIkConstraintMaxAllowedRotationAngleForJoint:(NSSet *)values;
- (void)removeIkConstraintMaxAllowedRotationAngleForJoint:(NSSet *)values;

- (void)addLookAtConstraintTargetObject:(NSGLookAtConstraint *)value;
- (void)removeLookAtConstraintTargetObject:(NSGLookAtConstraint *)value;
- (void)addLookAtConstraintTarget:(NSSet *)values;
- (void)removeLookAtConstraintTarget:(NSSet *)values;

- (void)addParticleSystemColliderNodesObject:(NSGParticleSystem *)value;
- (void)removeParticleSystemColliderNodesObject:(NSGParticleSystem *)value;
- (void)addParticleSystemColliderNodes:(NSSet *)values;
- (void)removeParticleSystemColliderNodes:(NSSet *)values;

@end
