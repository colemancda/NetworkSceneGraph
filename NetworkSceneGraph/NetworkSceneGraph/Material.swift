//
//  Material.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Material: NSManagedObject {

    @NSManaged public var cullMode: NSNumber
    @NSManaged public var doubleSided: NSNumber
    @NSManaged public var fresnelExponent: NSNumber
    @NSManaged public var lightingModel: NSNumber
    @NSManaged public var litPerPixel: NSNumber
    @NSManaged public var locksAmbientWithDiffuse: NSNumber
    @NSManaged public var id: NSNumber
    @NSManaged public var shininess: NSNumber
    @NSManaged public var transparency: NSNumber
    @NSManaged public var transparencyMode: NSNumber
    @NSManaged public var ambient: MaterialProperty
    @NSManaged public var diffuse: MaterialProperty
    @NSManaged public var emission: MaterialProperty
    @NSManaged public var geometry: Geometry
    @NSManaged public var multiply: MaterialProperty
    @NSManaged public var normal: MaterialProperty
    @NSManaged public var reflective: MaterialProperty
    @NSManaged public var specular: MaterialProperty
    @NSManaged public var transparent: MaterialProperty

}
