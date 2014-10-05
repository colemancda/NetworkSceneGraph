//
//  PhysicsVehicle.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class PhysicsVehicle: PhysicsBehavior {

    @NSManaged var speedInKilometersPerHour: NSNumber
    @NSManaged var chassisBody: PhysicsBody
    @NSManaged var wheels: NSSet

}
