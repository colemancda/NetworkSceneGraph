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

    @NSManaged var anchorA: AnyObject
    @NSManaged var anchorB: AnyObject
    @NSManaged var axisA: AnyObject
    @NSManaged var axisB: AnyObject
    @NSManaged var bodyA: PhysicsBody
    @NSManaged var bodyB: PhysicsBody

}
