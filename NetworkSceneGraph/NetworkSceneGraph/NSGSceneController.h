//
//  NSGSceneController.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
@import SceneKit;

/** Manages a @c SCNScene instance according to a @c NSManagedObjectContext instance. */

@interface NSGSceneController : NSObject

/** The scene graph this controller wil manage. */

@property (readonly, nonatomic) SCNScene *scene;

@property (readonly, nonatomic) NSManagedObjectContext *context;

#pragma mark - Initialization

/** 
 
 This a initializes a new instance and manipulates the nodes in the @c scene according to the scene described by the @c context.
 
 @param scene The scene graph this controller wil manage.
 
 @param context The managed object context this controller will use to manage the its @c scene property.
 
 @return A newly initialized instance.
 
 */

-(instancetype)initWithScene:(SCNScene *)scene
                     context:(NSManagedObjectContext *)context;

#pragma mark - 

@end
