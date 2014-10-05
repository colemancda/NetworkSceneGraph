//
//  Material.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Material: NSManagedObject {

    @NSManaged var cullMode: NSNumber
    @NSManaged var doubleSided: NSNumber
    @NSManaged var fresnelExponent: NSNumber
    @NSManaged var lightingModel: NSNumber
    @NSManaged var litPerPixel: NSNumber
    @NSManaged var locksAmbientWithDiffuse: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var shininess: NSNumber
    @NSManaged var transparency: NSNumber
    @NSManaged var transparencyMode: NSNumber
    @NSManaged var ambient: MaterialProperty
    @NSManaged var diffuse: MaterialProperty
    @NSManaged var emission: MaterialProperty
    @NSManaged var geometry: Geometry
    @NSManaged var multiply: MaterialProperty
    @NSManaged var normal: MaterialProperty
    @NSManaged var reflective: MaterialProperty
    @NSManaged var specular: MaterialProperty
    @NSManaged var transparent: MaterialProperty

}
