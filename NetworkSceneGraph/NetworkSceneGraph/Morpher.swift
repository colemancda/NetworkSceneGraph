//
//  Morpher.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Morpher: NSManagedObject {

    @NSManaged public var calculationMode: NSNumber
    @NSManaged public var id: NSNumber
    @NSManaged public var weights: NSValue
    @NSManaged public var node: Node
    @NSManaged public var targets: NSSet

}
