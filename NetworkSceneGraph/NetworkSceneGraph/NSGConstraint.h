//
//  NSGConstraint.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode;

@interface NSGConstraint : NSManagedObject

@property (nonatomic, retain) NSNumber * influenceFactor;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGNode *node;

@end
