//
//  NSGGeometry.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>

@class NSGGeometryElement, NSGGeometrySource, NSGMaterial, NSGNode;

@interface NSGGeometry : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSSet *geometryElements;
@property (nonatomic, retain) NSSet *geometrySources;
@property (nonatomic, retain) NSSet *materials;
@property (nonatomic, retain) NSGNode *node;
@end

@interface NSGGeometry (CoreDataGeneratedAccessors)

- (void)addGeometryElementsObject:(NSGGeometryElement *)value;
- (void)removeGeometryElementsObject:(NSGGeometryElement *)value;
- (void)addGeometryElements:(NSSet *)values;
- (void)removeGeometryElements:(NSSet *)values;

- (void)addGeometrySourcesObject:(NSGGeometrySource *)value;
- (void)removeGeometrySourcesObject:(NSGGeometrySource *)value;
- (void)addGeometrySources:(NSSet *)values;
- (void)removeGeometrySources:(NSSet *)values;

- (void)addMaterialsObject:(NSGMaterial *)value;
- (void)removeMaterialsObject:(NSGMaterial *)value;
- (void)addMaterials:(NSSet *)values;
- (void)removeMaterials:(NSSet *)values;

@end
