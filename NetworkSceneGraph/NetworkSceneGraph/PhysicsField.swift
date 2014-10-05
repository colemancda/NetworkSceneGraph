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
    @NSManaged var direction: AnyObject
    @NSManaged var exclusive: NSNumber
    @NSManaged var falloffExponent: NSNumber
    @NSManaged var halfExtent: AnyObject
    @NSManaged var minimumDistance: NSNumber
    @NSManaged var offset: AnyObject
    @NSManaged var id: NSNumber
    @NSManaged var scope: NSNumber
    @NSManaged var strength: NSNumber
    @NSManaged var usesEllipsoidalExtent: NSNumber

}
