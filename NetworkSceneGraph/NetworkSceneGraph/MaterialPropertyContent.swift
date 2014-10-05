//
//  MaterialPropertyContent.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class MaterialPropertyContent: NSManagedObject {

    @NSManaged var id: NSNumber
    @NSManaged var material: MaterialProperty

}
