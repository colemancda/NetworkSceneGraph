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

@property (readonly, nonatomic) SCNScene *scene;

#pragma mark - Initializer



@end
