//
//  NSGMaterialProperty.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGLight, NSGMaterial, NSGMaterialPropertyContent, NSGScene;

@interface NSGMaterialProperty : NSManagedObject

@property (nonatomic, retain) id borderColor;
@property (nonatomic, retain) id contentsTransform;
@property (nonatomic, retain) NSNumber * intensity;
@property (nonatomic, retain) NSNumber * magnificationFilter;
@property (nonatomic, retain) NSNumber * mappingChannel;
@property (nonatomic, retain) NSNumber * maxAnisotropy;
@property (nonatomic, retain) NSNumber * minificationFilter;
@property (nonatomic, retain) NSNumber * mipFilter;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSNumber * wrapS;
@property (nonatomic, retain) NSNumber * wrapT;
@property (nonatomic, retain) NSGMaterialPropertyContent *contents;
@property (nonatomic, retain) NSGLight *lightGobo;
@property (nonatomic, retain) NSGMaterial *materialAmbient;
@property (nonatomic, retain) NSGMaterial *materialDiffuse;
@property (nonatomic, retain) NSGMaterial *materialEmission;
@property (nonatomic, retain) NSGMaterial *materialMultiply;
@property (nonatomic, retain) NSGMaterial *materialNormal;
@property (nonatomic, retain) NSGMaterial *materialReflective;
@property (nonatomic, retain) NSGMaterial *materialSpecular;
@property (nonatomic, retain) NSGMaterial *materialTransparent;
@property (nonatomic, retain) NSGScene *sceneBackground;

@end
