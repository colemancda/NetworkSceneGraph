//
//  NSGSkinner.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@import SceneKit;

@class NSGGeometry, NSGGeometrySource, NSGNode;

@interface NSGSkinner : NSManagedObject

@property (nonatomic, retain) NSValue *baseGeometryBindTransform;
@property (nonatomic, retain) NSValue *boneInverseBindTransforms;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGGeometry *baseGeometry;
@property (nonatomic, retain) NSGGeometrySource *boneIndices;
@property (nonatomic, retain) NSSet *bones;
@property (nonatomic, retain) NSGGeometrySource *boneWeights;
@property (nonatomic, retain) NSGNode *skeleton;
@property (nonatomic, retain) NSGNode *node;
@end

@interface NSGSkinner (CoreDataGeneratedAccessors)

- (void)addBonesObject:(NSGNode *)value;
- (void)removeBonesObject:(NSGNode *)value;
- (void)addBones:(NSSet *)values;
- (void)removeBones:(NSSet *)values;

@end

@interface SCNSkinner (NetworkSceneGraphAdditions)

+(instancetype)skinnerWithValuesForManagedObject:(NSGSkinner *)managedObject;

@end