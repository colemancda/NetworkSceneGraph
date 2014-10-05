//
//  Light.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Light: NSManagedObject {

    @NSManaged var castsShadow: NSNumber
    @NSManaged var color: AnyObject
    @NSManaged var lightAttenuationEnd: NSNumber
    @NSManaged var lightAttenuationFalloffExponent: NSNumber
    @NSManaged var lightAttenuationStart: NSNumber
    @NSManaged var lightShadowFarClipping: NSNumber
    @NSManaged var lightShadowNearClipping: NSNumber
    @NSManaged var lightSpotInnerAngle: NSNumber
    @NSManaged var lightSpotOuterAngle: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var shadowColor: AnyObject
    @NSManaged var shadowRadius: NSNumber
    @NSManaged var type: NSNumber
    @NSManaged var node: Node

}
