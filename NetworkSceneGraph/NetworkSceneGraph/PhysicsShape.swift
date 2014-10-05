//
//  PhysicsShape.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class PhysicsShape: NSManagedObject {

    @NSManaged var shapeKeepAsCompound: NSNumber
    @NSManaged var shapeScale: NSValue
    @NSManaged var shapeType: NSValue
    @NSManaged var transforms: NSValue
    @NSManaged var id: NSNumber
    @NSManaged var geometry: Geometry
    @NSManaged var node: Node
    @NSManaged var parentShape: PhysicsShape
    @NSManaged var physicsBody: PhysicsBody
    @NSManaged var shapes: NSSet

}
