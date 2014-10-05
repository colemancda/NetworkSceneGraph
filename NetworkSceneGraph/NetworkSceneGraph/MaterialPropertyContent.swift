//
//  MaterialPropertyContent.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class MaterialPropertyContent: NSManagedObject {

    @NSManaged public var id: NSNumber?
    @NSManaged public var material: MaterialProperty?

}
