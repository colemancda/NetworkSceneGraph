//
//  MaterialPropertyContentCubeMapImages.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class MaterialPropertyContentCubeMapImages: MaterialPropertyContent {

    @NSManaged var backImageData: NSData
    @NSManaged var bottomImageData: NSData
    @NSManaged var frontImageData: NSData
    @NSManaged var leftImageData: NSData
    @NSManaged var rightImageData: NSData
    @NSManaged var topImageData: NSData

}
