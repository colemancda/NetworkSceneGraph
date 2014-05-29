//
//  NSGNode.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import <SceneKit/SceneKit.h>

@class NSGGeometry, NSGLight, NSGLink, NSGNode, NSGScene, NSGCamera;

@interface NSGNode : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * hidden;
@property (nonatomic, retain) NSNumber * opacity;
@property (nonatomic, retain) NSString * position;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSString * rotation;
@property (nonatomic, retain) NSString * scale;
@property (nonatomic, retain) NSSet *childNodes;
@property (nonatomic, retain) NSGGeometry *geometry;
@property (nonatomic, retain) NSGLight *light;
@property (nonatomic, retain) NSGLink *link;
@property (nonatomic, retain) NSGNode *parentNode;
@property (nonatomic, retain) NSGScene *scene;
@property (nonatomic, retain) NSGCamera *camera;
@property (nonatomic, retain) NSString * descriptionText;


// Transient

@property (nonatomic, readonly) SCNNode *node;

@end

@interface NSGNode (CoreDataGeneratedAccessors)

- (void)addChildNodesObject:(NSGNode *)value;
- (void)removeChildNodesObject:(NSGNode *)value;
- (void)addChildNodes:(NSSet *)values;
- (void)removeChildNodes:(NSSet *)values;

@end
