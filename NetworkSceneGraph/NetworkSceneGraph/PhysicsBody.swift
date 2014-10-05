//
//  PhysicsBody.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsBody: NSManagedObject {

    @NSManaged var allowsResting: NSNumber
    @NSManaged var angularDamping: NSNumber
    @NSManaged var angularVelocity: NSValue
    @NSManaged var angularVelocityFactor: NSValue
    @NSManaged var categoryBitMask: NSNumber
    @NSManaged var collisionBitMask: NSNumber
    @NSManaged var damping: NSNumber
    @NSManaged var friction: NSNumber
    @NSManaged var mass: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var restitution: NSNumber
    @NSManaged var rollingFriction: NSNumber
    @NSManaged var type: NSNumber
    @NSManaged var velocity: NSValue
    @NSManaged var velocityFactor: NSValue
    @NSManaged var node: Node
    @NSManaged var physicsBallSocketJointBodyA: PhysicsBallSocketJoint
    @NSManaged var physicsBallSocketJointBodyB: PhysicsBallSocketJoint
    @NSManaged var physicsHingeJointBodyA: PhysicsHingeJoint
    @NSManaged var physicsHingeJointBodyB: PhysicsHingeJoint
    @NSManaged var physicsShape: PhysicsShape
    @NSManaged var physicsSliderJointBodyA: PhysicsSliderJoint
    @NSManaged var physicsSliderJointBodyB: PhysicsSliderJoint
    @NSManaged var vehicle: PhysicsVehicle

}
