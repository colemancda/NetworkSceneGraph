//
//  Node.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Node: NSManagedObject {

    @NSManaged var descriptionText: String
    @NSManaged var hidden: NSNumber
    @NSManaged var opacity: NSNumber
    @NSManaged var paused: NSNumber
    @NSManaged var position: NSValue
    @NSManaged var id: NSNumber
    @NSManaged var rotation: NSValue
    @NSManaged var scale: NSValue
    @NSManaged var camera: Camera
    @NSManaged var childNodes: NSSet
    @NSManaged var geometry: Geometry
    @NSManaged var light: Light
    @NSManaged var link: Link
    @NSManaged var morpher: Morpher
    @NSManaged var parentNode: Node
    @NSManaged var physicsBody: PhysicsBody
    @NSManaged var physicsShape: PhysicsShape
    @NSManaged var physicsVehicleWheelNode: PhysicsVehicleWheel
    @NSManaged var scene: Scene
    @NSManaged var skinnerBones: Skinner
    @NSManaged var skinnerSkeleton: Skinner
    @NSManaged var sound: Sound
    @NSManaged var particleSystemColliderNodes: ParticleSystem

}
