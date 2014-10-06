//
//  Scene.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData
import SceneKit

public class Scene: NSManagedObject {

    @NSManaged public var id: NSNumber?
    @NSManaged public var background: MaterialProperty?
    @NSManaged public var nodes: NSSet
    @NSManaged public var physicsWorld: PhysicsWorld?

}