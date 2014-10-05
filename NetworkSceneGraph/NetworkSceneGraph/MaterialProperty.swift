//
//  MaterialProperty.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class MaterialProperty: NSManagedObject {

    @NSManaged public var borderColor: NSValue?
    @NSManaged public var intensity: NSNumber?
    @NSManaged public var magnificationFilter: NSNumber?
    @NSManaged public var mappingChannel: NSNumber?
    @NSManaged public var maxAnisotropy: NSNumber
    @NSManaged public var minificationFilter: NSNumber
    @NSManaged public var mipFilter: NSNumber
    @NSManaged public var id: NSNumber
    @NSManaged public var wrapS: NSNumber
    @NSManaged public var wrapT: NSNumber
    @NSManaged public var materialAmbient: Material
    @NSManaged public var sceneBackground: Scene
    @NSManaged public var contents: MaterialPropertyContent
    @NSManaged public var materialDiffuse: Material
    @NSManaged public var materialEmission: Material
    @NSManaged public var materialMultiply: Material
    @NSManaged public var materialNormal: Material
    @NSManaged public var materialReflective: Material
    @NSManaged public var materialSpecular: Material
    @NSManaged public var materialTransparent: Material

}
