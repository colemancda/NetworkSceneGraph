//
//  ParticleSystem.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class ParticleSystem: NSManagedObject {

    @NSManaged var acceleration: NSValue
    @NSManaged var affectedByGravity: NSNumber
    @NSManaged var affectedByPhysicsFields: NSNumber
    @NSManaged var birthDirection: NSNumber
    @NSManaged var birthLocation: NSNumber
    @NSManaged var birthRate: NSNumber
    @NSManaged var birthRateVariation: NSNumber
    @NSManaged var blackPassEnabled: NSNumber
    @NSManaged var blendMode: NSNumber
    @NSManaged var dampingFactor: NSNumber
    @NSManaged var emissionDuration: NSNumber
    @NSManaged var emissionDurationVariation: NSNumber
    @NSManaged var emittingDirection: NSValue
    @NSManaged var fresnelExponent: NSNumber
    @NSManaged var idleDuration: NSNumber
    @NSManaged var idleDurationVariation: NSNumber
    @NSManaged var imageSequenceAnimationMode: NSNumber
    @NSManaged var imageSequenceColumnCount: NSNumber
    @NSManaged var imageSequenceFrameRate: NSNumber
    @NSManaged var imageSequenceFrameRateVariation: NSNumber
    @NSManaged var imageSequenceInitialFrame: NSNumber
    @NSManaged var imageSequenceInitialFrameVariation: NSNumber
    @NSManaged var imageSequenceRowCount: NSNumber
    @NSManaged var lightingEnabled: NSNumber
    @NSManaged var local: NSNumber
    @NSManaged var loops: NSNumber
    @NSManaged var orientationMode: NSNumber
    @NSManaged var particleAngle: NSNumber
    @NSManaged var particleAngleVariation: NSNumber
    @NSManaged var particleAngularVelocity: NSNumber
    @NSManaged var particleAngularVelocityVariation: NSNumber
    @NSManaged var particleBounce: NSNumber
    @NSManaged var particleBounceVariation: NSNumber
    @NSManaged var particleColor: NSValue
    @NSManaged var particleColorVariation: NSValue
    @NSManaged var particleDiesOnCollision: NSNumber
    @NSManaged var particleFriction: NSNumber
    @NSManaged var particleFrictionVariation: NSNumber
    @NSManaged var particleImageData: NSData
    @NSManaged var particleLifeSpan: NSNumber
    @NSManaged var particleLifeSpanVariation: NSNumber
    @NSManaged var particleMass: NSNumber
    @NSManaged var particleMassVariation: NSNumber
    @NSManaged var particleSize: NSNumber
    @NSManaged var particleSizeVariation: NSNumber
    @NSManaged var particleVelocity: NSNumber
    @NSManaged var particleVelocityVariation: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var sortingMode: NSNumber
    @NSManaged var speedFactor: NSNumber
    @NSManaged var spreadingAngle: NSNumber
    @NSManaged var stretchFactor: NSNumber
    @NSManaged var warmupDuration: NSNumber
    @NSManaged var colliderNodes: NSSet
    @NSManaged var emitterShape: Geometry
    @NSManaged var systemSpawnedOnCollision: ParticleSystem
    @NSManaged var systemSpawnedOnDying: ParticleSystem
    @NSManaged var systemSpawnedOnLiving: ParticleSystem
    @NSManaged var particleSystemSystemSpawnedOnLiving: ParticleSystem
    @NSManaged var particleSystemSystemSpawnedOnDying: ParticleSystem
    @NSManaged var particleSystemSystemSpawnedOnCollision: ParticleSystem

}
