//
//  NSGMaterialProperty.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialProperty.h"
#import "NSGLight.h"
#import "NSGMaterial.h"
#import "NSGMaterialPropertyContent.h"
#import "NSGScene.h"
#import "NSString+CGColorRef.h"

@implementation NSGMaterialProperty

@dynamic borderColor;
@dynamic contentsTransform;
@dynamic intensity;
@dynamic magnificationFilter;
@dynamic mappingChannel;
@dynamic maxAnisotropy;
@dynamic minificationFilter;
@dynamic mipFilter;
@dynamic resourceID;
@dynamic wrapS;
@dynamic wrapT;
@dynamic contents;
@dynamic lightGobo;
@dynamic materialAmbient;
@dynamic materialDiffuse;
@dynamic materialEmission;
@dynamic materialMultiply;
@dynamic materialNormal;
@dynamic materialReflective;
@dynamic materialSpecular;
@dynamic materialTransparent;
@dynamic sceneBackground;

@end

@implementation SCNMaterialProperty (NetworkSceneGraphAdditions)

-(void)setValuesForManagedObject:(NSGMaterialProperty *)managedObject
{
    // borderColor
    
    CGColorRef managedObjectBorderColor = [managedObject.borderColor CGColorRefValue];
    
    CGColorRef currentBorderColor = (__bridge CGColorRef)(self.borderColor);
    
    if (!CGColorEqualToColor(managedObjectBorderColor, currentBorderColor)) {
        
        self.borderColor = (__bridge id)(managedObjectBorderColor);
    }
    
    // contentsTransform
    
    
    
}

@end