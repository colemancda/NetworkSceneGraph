//
//  ParticleSystem.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class ParticleSystem: NSManagedObject {

    @NSManaged public var acceleration: NSValue
    @NSManaged public var affectedByGravity: NSNumber
    @NSManaged public var affectedByPhysicsFields: NSNumber
    @NSManaged public var birthDirection: NSNumber
    @NSManaged public var birthLocation: NSNumber
    @NSManaged public var birthRate: NSNumber
    @NSManaged public var birthRateVariation: NSNumber
    @NSManaged public var blackPassEnabled: NSNumber
    @NSManaged public var blendMode: NSNumber
    @NSManaged public var dampingFactor: NSNumber
    @NSManaged public var emissionDuration: NSNumber
    @NSManaged public var emissionDurationVariation: NSNumber
    @NSManaged public var emittingDirection: NSValue
    @NSManaged public var fresnelExponent: NSNumber
    @NSManaged public var idleDuration: NSNumber
    @NSManaged public var idleDurationVariation: NSNumber
    @NSManaged public var imageSequenceAnimationMode: NSNumber
    @NSManaged public var imageSequenceColumnCount: NSNumber
    @NSManaged public var imageSequenceFrameRate: NSNumber
    @NSManaged public var imageSequenceFrameRateVariation: NSNumber
    @NSManaged public var imageSequenceInitialFrame: NSNumber
    @NSManaged public var imageSequenceInitialFrameVariation: NSNumber
    @NSManaged public var imageSequenceRowCount: NSNumber
    @NSManaged public var lightingEnabled: NSNumber
    @NSManaged public var local: NSNumber
    @NSManaged public var loops: NSNumber
    @NSManaged public var orientationMode: NSNumber
    @NSManaged public var particleAngle: NSNumber
    @NSManaged public var particleAngleVariation: NSNumber
    @NSManaged public var particleAngularVelocity: NSNumber
    @NSManaged public var particleAngularVelocityVariation: NSNumber
    @NSManaged public var particleBounce: NSNumber
    @NSManaged public var particleBounceVariation: NSNumber
    @NSManaged public var particleColor: NSValue
    @NSManaged public var particleColorVariation: NSValue
    @NSManaged public var particleDiesOnCollision: NSNumber
    @NSManaged public var particleFriction: NSNumber
    @NSManaged public var particleFrictionVariation: NSNumber
    @NSManaged public var particleImageData: NSData
    @NSManaged public var particleLifeSpan: NSNumber
    @NSManaged public var particleLifeSpanVariation: NSNumber
    @NSManaged public var particleMass: NSNumber
    @NSManaged public var particleMassVariation: NSNumber
    @NSManaged public var particleSize: NSNumber
    @NSManaged public var particleSizeVariation: NSNumber
    @NSManaged public var particleVelocity: NSNumber
    @NSManaged public var particleVelocityVariation: NSNumber
    @NSManaged public var id: NSNumber
    @NSManaged public var sortingMode: NSNumber
    @NSManaged public var speedFactor: NSNumber
    @NSManaged public var spreadingAngle: NSNumber
    @NSManaged public var stretchFactor: NSNumber
    @NSManaged public var warmupDuration: NSNumber
    @NSManaged public var colliderNodes: NSSet
    @NSManaged public var emitterShape: Geometry
    @NSManaged public var systemSpawnedOnCollision: ParticleSystem
    @NSManaged public var systemSpawnedOnDying: ParticleSystem
    @NSManaged public var systemSpawnedOnLiving: ParticleSystem
    @NSManaged public var particleSystemSystemSpawnedOnLiving: ParticleSystem
    @NSManaged public var particleSystemSystemSpawnedOnDying: ParticleSystem
    @NSManaged public var particleSystemSystemSpawnedOnCollision: ParticleSystem

}
