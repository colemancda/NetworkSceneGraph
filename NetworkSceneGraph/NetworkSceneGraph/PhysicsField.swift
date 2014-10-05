//
//  PhysicsField.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsField: NSManagedObject {

    @NSManaged var active: NSNumber
    @NSManaged var direction: NSValue
    @NSManaged var exclusive: NSNumber
    @NSManaged var falloffExponent: NSNumber
    @NSManaged var halfExtent: NSValue
    @NSManaged var minimumDistance: NSNumber
    @NSManaged var offset: NSValue
    @NSManaged var id: NSNumber
    @NSManaged var scope: NSNumber
    @NSManaged var strength: NSNumber
    @NSManaged var usesEllipsoidalExtent: NSNumber

}
