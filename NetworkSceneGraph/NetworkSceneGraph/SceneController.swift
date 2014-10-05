//
//  SceneController.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import SceneKit
import CoreData

/** This controller class will tell the self.viewScene to display the scene in self.representedScene. */
public class SceneController {
    
    // MARK: - Properties
    
    // MARK: View
    
    public let viewScene = SCNScene()
    
    // MARK: Model
    
    public let representedScene: Scene
    
    public let managedObjectContext: NSManagedObjectContext
    
    // MARK: - Initialization
    
    deinit {
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    init(representedScene: Scene, managedObjectContext: NSManagedObjectContext) {
        
        // set values
        self.representedScene = representedScene;
        self.managedObjectContext = managedObjectContext;
        
        // observe changes
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "managedObjectContextObjectsDidChange", name: NSManagedObjectContextObjectsDidChangeNotification, object: self.managedObjectContext)
    }
    
    // MARK: - Private Methods
    
    private func managedObjectContextObjectsDidChange(notification: NSNotification) {
        
        
    }
    
    
}