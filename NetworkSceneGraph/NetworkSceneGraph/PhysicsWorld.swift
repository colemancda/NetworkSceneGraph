//
//  PhysicsWorld.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class PhysicsWorld: NSManagedObject {

    @NSManaged var gravity: NSValue
    @NSManaged var speed: NSNumber
    @NSManaged var timeStep: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var behaviors: NSSet
    @NSManaged var scene: Scene

}
