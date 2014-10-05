//
//  Skinner.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Skinner: NSManagedObject {

    @NSManaged var baseGeometryBindTransform: AnyObject
    @NSManaged var boneInverseBindTransforms: AnyObject
    @NSManaged var id: NSNumber
    @NSManaged var baseGeometry: Geometry
    @NSManaged var boneIndices: GeometrySource
    @NSManaged var bones: NSSet
    @NSManaged var boneWeights: GeometrySource
    @NSManaged var skeleton: Node

}
