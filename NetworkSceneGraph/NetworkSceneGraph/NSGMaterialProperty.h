//
//  NSGMaterialProperty.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGLight, NSGMaterial, NSGMaterialPropertyContent, NSGScene;

@interface NSGMaterialProperty : NSManagedObject

@property (nonatomic, retain) NSNumber * intensity;
@property (nonatomic, retain) NSNumber * magnificationFilter;
@property (nonatomic, retain) NSNumber * mappingChannel;
@property (nonatomic, retain) NSNumber * maxAnisotropy;
@property (nonatomic, retain) NSNumber * minificationFilter;
@property (nonatomic, retain) NSNumber * mipFilter;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * wrapS;
@property (nonatomic, retain) NSNumber * wrapT;
@property (nonatomic, retain) NSGMaterial *ambientMaterial;
@property (nonatomic, retain) NSGScene *backgroundScene;
@property (nonatomic, retain) NSGMaterialPropertyContent *content;
@property (nonatomic, retain) NSGMaterial *diffuseMaterial;
@property (nonatomic, retain) NSGMaterial *emissionMaterial;
@property (nonatomic, retain) NSGLight *globoLight;
@property (nonatomic, retain) NSGMaterial *multiplyMaterial;
@property (nonatomic, retain) NSGMaterial *normalMaterial;
@property (nonatomic, retain) NSGMaterial *reflectiveMaterial;
@property (nonatomic, retain) NSGMaterial *specularMaterial;
@property (nonatomic, retain) NSGMaterial *transparentMaterial;

@end
