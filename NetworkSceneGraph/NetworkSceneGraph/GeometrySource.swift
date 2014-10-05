//
//  GeometrySource.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class GeometrySource: NSManagedObject {

    @NSManaged var bytesPerComponent: NSNumber
    @NSManaged var componentsPerVector: NSNumber
    @NSManaged var data: NSData
    @NSManaged var dataOffset: NSNumber
    @NSManaged var dataStride: NSNumber
    @NSManaged var floatComponents: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var semantic: String
    @NSManaged var vectorCount: NSNumber
    @NSManaged var geometry: Geometry
    @NSManaged var skinnerBoneIndices: Skinner
    @NSManaged var skinnerBoneWeights: Skinner

}
