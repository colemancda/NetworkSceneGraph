//
//  PhysicsSliderJoint.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsSliderJoint: PhysicsBehavior {

    @NSManaged var anchorA: NSValue
    @NSManaged var anchorB: NSValue
    @NSManaged var axisA: NSValue
    @NSManaged var axisB: NSValue
    @NSManaged var maximumAngularLimit: NSNumber
    @NSManaged var maximumLinearLimit: NSNumber
    @NSManaged var minimumAngularLimit: NSNumber
    @NSManaged var minimumLinearLimit: NSNumber
    @NSManaged var motorMaximumForce: NSNumber
    @NSManaged var motorMaximumTorque: NSNumber
    @NSManaged var motorTargetAngularVelocity: NSNumber
    @NSManaged var motorTargetLinearVelocity: NSNumber
    @NSManaged var bodyA: PhysicsBody
    @NSManaged var bodyB: PhysicsBody

}
