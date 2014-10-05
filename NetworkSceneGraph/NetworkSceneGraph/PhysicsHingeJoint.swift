//
//  PhysicsHingeJoint.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsHingeJoint: PhysicsBehavior {

    @NSManaged var anchorA: NSValue
    @NSManaged var anchorB: NSValue
    @NSManaged var axisA: NSValue
    @NSManaged var axisB: NSValue
    @NSManaged var bodyA: PhysicsBody
    @NSManaged var bodyB: PhysicsBody

}
