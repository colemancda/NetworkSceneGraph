//
//  NSGPhysicsShape.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry, NSGNode, NSGPhysicsBody, NSGPhysicsShape;

@interface NSGPhysicsShape : NSManagedObject

@property (nonatomic, retain) NSNumber * shapeKeepAsCompound;
@property (nonatomic, retain) NSString * shapeScale;
@property (nonatomic, retain) NSString * shapeType;
@property (nonatomic, retain) id transforms;
@property (nonatomic, retain) NSGGeometry *geometry;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGPhysicsShape *parentShape;
@property (nonatomic, retain) NSGPhysicsBody *physicsBody;
@property (nonatomic, retain) NSSet *shapes;
@end

@interface NSGPhysicsShape (CoreDataGeneratedAccessors)

- (void)addShapesObject:(NSGPhysicsShape *)value;
- (void)removeShapesObject:(NSGPhysicsShape *)value;
- (void)addShapes:(NSSet *)values;
- (void)removeShapes:(NSSet *)values;

@end
