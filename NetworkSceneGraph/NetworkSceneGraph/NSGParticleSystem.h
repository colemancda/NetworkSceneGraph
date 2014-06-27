//
//  NSGParticleSystem.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry, NSGNode, NSGParticleSystem;

@interface NSGParticleSystem : NSManagedObject

@property (nonatomic, retain) NSString * acceleration;
@property (nonatomic, retain) NSNumber * affectedByGravity;
@property (nonatomic, retain) NSNumber * affectedByPhysicsFields;
@property (nonatomic, retain) NSNumber * birthDirection;
@property (nonatomic, retain) NSNumber * birthLocation;
@property (nonatomic, retain) NSNumber * birthRate;
@property (nonatomic, retain) NSNumber * birthRateVariation;
@property (nonatomic, retain) NSNumber * blackPassEnabled;
@property (nonatomic, retain) NSNumber * blendMode;
@property (nonatomic, retain) NSNumber * dampingFactor;
@property (nonatomic, retain) NSNumber * emissionDuration;
@property (nonatomic, retain) NSNumber * emissionDurationVariation;
@property (nonatomic, retain) NSString * emittingDirection;
@property (nonatomic, retain) NSNumber * fresnelExponent;
@property (nonatomic, retain) NSNumber * idleDuration;
@property (nonatomic, retain) NSNumber * idleDurationVariation;
@property (nonatomic, retain) NSNumber * imageSequenceAnimationMode;
@property (nonatomic, retain) NSNumber * imageSequenceColumnCount;
@property (nonatomic, retain) NSNumber * imageSequenceFrameRate;
@property (nonatomic, retain) NSNumber * imageSequenceFrameRateVariation;
@property (nonatomic, retain) NSNumber * imageSequenceInitialFrame;
@property (nonatomic, retain) NSNumber * imageSequenceInitialFrameVariation;
@property (nonatomic, retain) NSNumber * imageSequenceRowCount;
@property (nonatomic, retain) NSNumber * lightingEnabled;
@property (nonatomic, retain) NSNumber * local;
@property (nonatomic, retain) NSNumber * loops;
@property (nonatomic, retain) NSNumber * orientationMode;
@property (nonatomic, retain) NSNumber * particleAngle;
@property (nonatomic, retain) NSNumber * particleAngleVariation;
@property (nonatomic, retain) NSNumber * particleAngularVelocity;
@property (nonatomic, retain) NSNumber * particleAngularVelocityVariation;
@property (nonatomic, retain) NSNumber * particleBounce;
@property (nonatomic, retain) NSNumber * particleBounceVariation;
@property (nonatomic, retain) NSString * particleColor;
@property (nonatomic, retain) NSString * particleColorVariation;
@property (nonatomic, retain) NSNumber * particleDiesOnCollision;
@property (nonatomic, retain) NSNumber * particleFriction;
@property (nonatomic, retain) NSNumber * particleFrictionVariation;
@property (nonatomic, retain) NSData * particleImageData;
@property (nonatomic, retain) NSNumber * particleLifeSpan;
@property (nonatomic, retain) NSNumber * particleLifeSpanVariation;
@property (nonatomic, retain) NSNumber * particleMass;
@property (nonatomic, retain) NSNumber * particleMassVariation;
@property (nonatomic, retain) NSNumber * particleSize;
@property (nonatomic, retain) NSNumber * particleSizeVariation;
@property (nonatomic, retain) NSNumber * particleVelocity;
@property (nonatomic, retain) NSNumber * particleVelocityVariation;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * sortingMode;
@property (nonatomic, retain) NSNumber * speedFactor;
@property (nonatomic, retain) NSNumber * spreadingAngle;
@property (nonatomic, retain) NSNumber * stretchFactor;
@property (nonatomic, retain) NSNumber * warmupDuration;
@property (nonatomic, retain) NSSet *colliderNodes;
@property (nonatomic, retain) NSGGeometry *emitterShape;
@property (nonatomic, retain) NSSet *particleSystemSystemSpawnedOnCollision;
@property (nonatomic, retain) NSSet *particleSystemSystemSpawnedOnDying;
@property (nonatomic, retain) NSSet *particleSystemSystemSpawnedOnLiving;
@property (nonatomic, retain) NSGParticleSystem *systemSpawnedOnCollision;
@property (nonatomic, retain) NSGParticleSystem *systemSpawnedOnDying;
@property (nonatomic, retain) NSGParticleSystem *systemSpawnedOnLiving;
@end

@interface NSGParticleSystem (CoreDataGeneratedAccessors)

- (void)addColliderNodesObject:(NSGNode *)value;
- (void)removeColliderNodesObject:(NSGNode *)value;
- (void)addColliderNodes:(NSSet *)values;
- (void)removeColliderNodes:(NSSet *)values;

- (void)addParticleSystemSystemSpawnedOnCollisionObject:(NSGParticleSystem *)value;
- (void)removeParticleSystemSystemSpawnedOnCollisionObject:(NSGParticleSystem *)value;
- (void)addParticleSystemSystemSpawnedOnCollision:(NSSet *)values;
- (void)removeParticleSystemSystemSpawnedOnCollision:(NSSet *)values;

- (void)addParticleSystemSystemSpawnedOnDyingObject:(NSGParticleSystem *)value;
- (void)removeParticleSystemSystemSpawnedOnDyingObject:(NSGParticleSystem *)value;
- (void)addParticleSystemSystemSpawnedOnDying:(NSSet *)values;
- (void)removeParticleSystemSystemSpawnedOnDying:(NSSet *)values;

- (void)addParticleSystemSystemSpawnedOnLivingObject:(NSGParticleSystem *)value;
- (void)removeParticleSystemSystemSpawnedOnLivingObject:(NSGParticleSystem *)value;
- (void)addParticleSystemSystemSpawnedOnLiving:(NSSet *)values;
- (void)removeParticleSystemSystemSpawnedOnLiving:(NSSet *)values;

@end
