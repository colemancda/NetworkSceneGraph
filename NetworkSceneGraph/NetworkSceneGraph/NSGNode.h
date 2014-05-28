//
//  NSGNode.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode;

@interface NSGNode : NSManagedObject

@property (nonatomic, retain) NSNumber * hidden;
@property (nonatomic, retain) NSNumber * opacity;
@property (nonatomic, retain) NSString * position;
@property (nonatomic, retain) NSString * rotation;
@property (nonatomic, retain) NSString * scale;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSSet *childNodes;
@property (nonatomic, retain) NSManagedObject *geometry;
@property (nonatomic, retain) NSManagedObject *light;
@property (nonatomic, retain) NSManagedObject *link;
@property (nonatomic, retain) NSGNode *parentNode;
@property (nonatomic, retain) NSManagedObject *camera;
@property (nonatomic, retain) NSManagedObject *scene;
@end

@interface NSGNode (CoreDataGeneratedAccessors)

- (void)addChildNodesObject:(NSGNode *)value;
- (void)removeChildNodesObject:(NSGNode *)value;
- (void)addChildNodes:(NSSet *)values;
- (void)removeChildNodes:(NSSet *)values;

@end
