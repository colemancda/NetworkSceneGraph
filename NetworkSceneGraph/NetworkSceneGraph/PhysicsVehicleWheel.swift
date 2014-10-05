//
//  PhysicsVehicleWheel.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsVehicleWheel: NSManagedObject {

    @NSManaged var axle: NSValue
    @NSManaged var connectionPosition: NSValue
    @NSManaged var frictionSlip: NSNumber
    @NSManaged var maximumSuspensionForce: NSNumber
    @NSManaged var maximumSuspensionTravel: NSNumber
    @NSManaged var radius: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var steeringAxis: NSValue
    @NSManaged var suspensionCompression: NSNumber
    @NSManaged var suspensionDamping: NSNumber
    @NSManaged var suspensionRestLength: NSNumber
    @NSManaged var suspensionStiffness: NSNumber
    @NSManaged var node: Node
    @NSManaged var vehicle: PhysicsVehicle

}
