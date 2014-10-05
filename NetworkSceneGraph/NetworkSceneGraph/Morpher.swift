//
//  Morpher.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Morpher: NSManagedObject {

    @NSManaged var calculationMode: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var weights: AnyObject
    @NSManaged var node: Node
    @NSManaged var targets: NSSet

}
