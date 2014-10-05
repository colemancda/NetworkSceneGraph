//
//  Camera.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Camera: NSManagedObject {

    @NSManaged var aperture: NSNumber
    @NSManaged var automaticallyAdjustsZRange: NSNumber
    @NSManaged var focalBlurRadius: NSNumber
    @NSManaged var focalDistance: NSNumber
    @NSManaged var focalSize: NSNumber
    @NSManaged var orthographicScale: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var usesOrthographicProjection: NSNumber
    @NSManaged var xFov: NSNumber
    @NSManaged var yFov: NSNumber
    @NSManaged var zFar: NSNumber
    @NSManaged var zNear: NSNumber
    @NSManaged var node: Node

}
