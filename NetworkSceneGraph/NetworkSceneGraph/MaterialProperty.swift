//
//  MaterialProperty.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class MaterialProperty: NSManagedObject {

    @NSManaged var borderColor: NSValue
    @NSManaged var intensity: NSNumber
    @NSManaged var magnificationFilter: NSNumber
    @NSManaged var mappingChannel: NSNumber
    @NSManaged var maxAnisotropy: NSNumber
    @NSManaged var minificationFilter: NSNumber
    @NSManaged var mipFilter: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var wrapS: NSNumber
    @NSManaged var wrapT: NSNumber
    @NSManaged var materialAmbient: Material
    @NSManaged var sceneBackground: Scene
    @NSManaged var contents: MaterialPropertyContent
    @NSManaged var materialDiffuse: Material
    @NSManaged var materialEmission: Material
    @NSManaged var materialMultiply: Material
    @NSManaged var materialNormal: Material
    @NSManaged var materialReflective: Material
    @NSManaged var materialSpecular: Material
    @NSManaged var materialTransparent: Material

}
