//
//  NSGMaterial.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry, NSGMaterialProperty;

@interface NSGMaterial : NSManagedObject

@property (nonatomic, retain) NSNumber * cullMode;
@property (nonatomic, retain) NSNumber * doubleSided;
@property (nonatomic, retain) NSNumber * fresnelExponent;
@property (nonatomic, retain) NSString * lightingModelName;
@property (nonatomic, retain) NSNumber * litPerPixel;
@property (nonatomic, retain) NSNumber * locksAmbientWithDiffuse;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * shininess;
@property (nonatomic, retain) NSNumber * transparency;
@property (nonatomic, retain) NSNumber * transparencyMode;
@property (nonatomic, retain) NSGMaterialProperty *ambient;
@property (nonatomic, retain) NSGMaterialProperty *diffuse;
@property (nonatomic, retain) NSGMaterialProperty *emission;
@property (nonatomic, retain) NSGGeometry *geometry;
@property (nonatomic, retain) NSGMaterialProperty *multiply;
@property (nonatomic, retain) NSGMaterialProperty *normal;
@property (nonatomic, retain) NSGMaterialProperty *reflective;
@property (nonatomic, retain) NSGMaterialProperty *specular;
@property (nonatomic, retain) NSGMaterialProperty *transparent;

@end
