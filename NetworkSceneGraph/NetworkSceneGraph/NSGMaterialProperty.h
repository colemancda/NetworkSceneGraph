//
//  NSGMaterialProperty.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGScene;

@interface NSGMaterialProperty : NSManagedObject

@property (nonatomic, retain) NSNumber * intensity;
@property (nonatomic, retain) NSNumber * magnificationFilter;
@property (nonatomic, retain) NSNumber * mappingChannel;
@property (nonatomic, retain) NSNumber * maxAnisotropy;
@property (nonatomic, retain) NSNumber * minificationFilter;
@property (nonatomic, retain) NSNumber * mipFilter;
@property (nonatomic, retain) NSNumber * wrapS;
@property (nonatomic, retain) NSNumber * wrapT;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSManagedObject *ambientMaterial;
@property (nonatomic, retain) NSManagedObject *content;
@property (nonatomic, retain) NSManagedObject *diffuseMaterial;
@property (nonatomic, retain) NSManagedObject *emissionMaterial;
@property (nonatomic, retain) NSManagedObject *multiplyMaterial;
@property (nonatomic, retain) NSManagedObject *normalMaterial;
@property (nonatomic, retain) NSManagedObject *reflectiveMaterial;
@property (nonatomic, retain) NSManagedObject *specularMaterial;
@property (nonatomic, retain) NSManagedObject *transparentMaterial;
@property (nonatomic, retain) NSManagedObject *globoLight;
@property (nonatomic, retain) NSGScene *backgroundScene;

@end
