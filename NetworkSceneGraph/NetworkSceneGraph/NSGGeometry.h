//
//  NSGGeometry.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry, NSGGeometryElement, NSGGeometrySource, NSGLevelOfDetail, NSGMaterial, NSGMorpher, NSGNode, NSGParticleSystem, NSGPhysicsShape, NSGSkinner;

@interface NSGGeometry : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * subdivisionLevel;
@property (nonatomic, retain) NSGGeometryElement *edgeCreasesElement;
@property (nonatomic, retain) NSGGeometrySource *edgeCreasesSource;
@property (nonatomic, retain) NSOrderedSet *geometryElements;
@property (nonatomic, retain) NSGGeometry *geometryLevelOfDetail;
@property (nonatomic, retain) NSSet *geometrySources;
@property (nonatomic, retain) NSGLevelOfDetail *levelofDetailGeometry;
@property (nonatomic, retain) NSSet *levelsOfDetail;
@property (nonatomic, retain) NSOrderedSet *materials;
@property (nonatomic, retain) NSGMorpher *morpher;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGParticleSystem *particleSystemEmitterShape;
@property (nonatomic, retain) NSGPhysicsShape *physicsShapeGeometry;
@property (nonatomic, retain) NSGSkinner *skinnerBaseGeometry;
@end

@interface NSGGeometry (CoreDataGeneratedAccessors)

- (void)insertObject:(NSGGeometryElement *)value inGeometryElementsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromGeometryElementsAtIndex:(NSUInteger)idx;
- (void)insertGeometryElements:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeGeometryElementsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInGeometryElementsAtIndex:(NSUInteger)idx withObject:(NSGGeometryElement *)value;
- (void)replaceGeometryElementsAtIndexes:(NSIndexSet *)indexes withGeometryElements:(NSArray *)values;
- (void)addGeometryElementsObject:(NSGGeometryElement *)value;
- (void)removeGeometryElementsObject:(NSGGeometryElement *)value;
- (void)addGeometryElements:(NSOrderedSet *)values;
- (void)removeGeometryElements:(NSOrderedSet *)values;
- (void)addGeometrySourcesObject:(NSGGeometrySource *)value;
- (void)removeGeometrySourcesObject:(NSGGeometrySource *)value;
- (void)addGeometrySources:(NSSet *)values;
- (void)removeGeometrySources:(NSSet *)values;

- (void)addLevelsOfDetailObject:(NSGGeometry *)value;
- (void)removeLevelsOfDetailObject:(NSGGeometry *)value;
- (void)addLevelsOfDetail:(NSSet *)values;
- (void)removeLevelsOfDetail:(NSSet *)values;

- (void)insertObject:(NSGMaterial *)value inMaterialsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromMaterialsAtIndex:(NSUInteger)idx;
- (void)insertMaterials:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeMaterialsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInMaterialsAtIndex:(NSUInteger)idx withObject:(NSGMaterial *)value;
- (void)replaceMaterialsAtIndexes:(NSIndexSet *)indexes withMaterials:(NSArray *)values;
- (void)addMaterialsObject:(NSGMaterial *)value;
- (void)removeMaterialsObject:(NSGMaterial *)value;
- (void)addMaterials:(NSOrderedSet *)values;
- (void)removeMaterials:(NSOrderedSet *)values;
@end
