//
//  SceneController.swift
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 10/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData
import SceneKit

/** The managed object model used by this NetworkSceneGraph. */
public let NetworkSceneGraphManagedObjectModel = NSManagedObjectModel(contentsOfURL: NSBundle(identifier: "com.ColemanCDA.NetworkSceneGraph")!.URLForResource("Model", withExtension: "momd")!)!

/** This controller class will tell the self.viewScene to display the scene in self.representedScene. */
@objc public class SceneController {
    
    // MARK: - Properties
    
    // MARK: View
    
    public lazy var viewScene: SCNScene = self.initViewScene()
    
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
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "managedObjectContextObjectsDidChange:", name: NSManagedObjectContextObjectsDidChangeNotification, object: self.managedObjectContext)
    }
    
    private func initViewScene() -> SCNScene {
        
        let viewScene = SCNScene()
        
        // set the background
        if self.representedScene.background != nil {
            
            viewScene.background 
        }
        
        return viewScene
    }
    
    // MARK: - Private Methods
    
    private func managedObjectContextObjectsDidChange(notification: NSNotification) {
        
        let insertedObjects = notification.userInfo?[NSInsertedObjectsKey] as? [NSManagedObject]
        
        
    }
    
    
}
