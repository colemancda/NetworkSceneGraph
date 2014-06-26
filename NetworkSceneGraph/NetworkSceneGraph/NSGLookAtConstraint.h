//
//  NSGLookAtConstraint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode;

@interface NSGLookAtConstraint : NSManagedObject

@property (nonatomic, retain) NSNumber * gimbalLockEnabled;
@property (nonatomic, retain) NSGNode *target;

@end
