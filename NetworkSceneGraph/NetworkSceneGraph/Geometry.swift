//
//  Geometry.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Geometry: NSManagedObject {

    @NSManaged public var id: NSNumber
    @NSManaged public var geometryElements: NSSet
    @NSManaged public var geometryLevelOfDetail: Geometry
    @NSManaged public var geometrySources: NSSet
    @NSManaged public var levelsOfDetail: NSSet
    @NSManaged public var materials: NSSet
    @NSManaged public var morpher: Morpher
    @NSManaged public var node: Node
    @NSManaged public var particleSystemEmitterShape: ParticleSystem
    @NSManaged public var physicsShapeGeometry: PhysicsShape
    @NSManaged public var skinnerBaseGeometry: Skinner
    @NSManaged public var soundAudibleGeometry: Sound

}
