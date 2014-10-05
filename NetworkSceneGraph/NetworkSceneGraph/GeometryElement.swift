//
//  GeometryElement.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class GeometryElement: NSManagedObject {

    @NSManaged var bytesPerIndex: NSNumber
    @NSManaged var data: NSData
    @NSManaged var primitiveCount: NSNumber
    @NSManaged var primitiveType: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var geometry: Geometry

}
