//
//  Link.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Link: NSManagedObject {

    @NSManaged var id: NSNumber
    @NSManaged var sceneID: NSNumber
    @NSManaged var url: String
    @NSManaged var node: Node

}
