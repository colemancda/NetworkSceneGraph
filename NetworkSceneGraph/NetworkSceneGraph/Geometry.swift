//
//  Geometry.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Geometry: NSManagedObject {

    @NSManaged var id: NSNumber
    @NSManaged var geometryElements: NSSet
    @NSManaged var geometryLevelOfDetail: Geometry
    @NSManaged var geometrySources: NSSet
    @NSManaged var levelsOfDetail: NSSet
    @NSManaged var materials: NSSet
    @NSManaged var morpher: Morpher
    @NSManaged var node: Node
    @NSManaged var particleSystemEmitterShape: ParticleSystem
    @NSManaged var physicsShapeGeometry: PhysicsShape
    @NSManaged var skinnerBaseGeometry: Skinner
    @NSManaged var soundAudibleGeometry: Sound

}
