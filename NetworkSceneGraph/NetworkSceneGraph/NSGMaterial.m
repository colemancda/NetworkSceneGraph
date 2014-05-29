//
//  NSGMaterial.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterial.h"
#import "NSGGeometry.h"
#import "NSGMaterialProperty.h"

static void *KVOContext = &KVOContext;

@implementation SCNMaterialProperty (Duplicate)

-(void)setValuesUsingMaterialProperty:(SCNMaterialProperty *)materialProperty
{
    self.contents = materialProperty.contents;
    
    self.intensity = materialProperty.intensity;
    
    self.minificationFilter = materialProperty.minificationFilter;
    
    self.magnificationFilter = materialProperty.magnificationFilter;
    
    self.mipFilter = materialProperty.mipFilter;
    
    self.contentsTransform = materialProperty.contentsTransform;
    
    self.wrapS = materialProperty.wrapS;
    
    self.wrapT = materialProperty.wrapT;
    
    self.borderColor = materialProperty.borderColor;
    
    self.mappingChannel = materialProperty.mappingChannel;
    
    self.maxAnisotropy = materialProperty.maxAnisotropy;
}

@end

@implementation NSGMaterial (KVOMaterialProperty)

-(void)observeMaterialPropertyWithName
{
    
}

-(void)stopObservingMaterialProperty
{
    
}

@end

@implementation NSGMaterial

@dynamic cullMode;
@dynamic doubleSided;
@dynamic fresnelExponent;
@dynamic lightingModelName;
@dynamic litPerPixel;
@dynamic locksAmbientWithDiffuse;
@dynamic resourceID;
@dynamic shininess;
@dynamic transparency;
@dynamic transparencyMode;
@dynamic ambient;
@dynamic diffuse;
@dynamic emission;
@dynamic geometry;
@dynamic multiply;
@dynamic normal;
@dynamic reflective;
@dynamic specular;
@dynamic transparent;

@synthesize material = _material;

-(void)dealloc
{
    if (self.material) {
        
        [self removeObserver:self
                  forKeyPath:@"cullMode"];
        
        [self removeObserver:self
                  forKeyPath:@"doubleSided"];
        
        [self removeObserver:self
                  forKeyPath:@"fresnelExponent"];
        
        [self removeObserver:self
                  forKeyPath:@"lightingModelName"];
        
        [self removeObserver:self
                  forKeyPath:@"litPerPixel"];
        
        [self removeObserver:self
                  forKeyPath:@"locksAmbientWithDiffuse"];
        
        [self removeObserver:self
                  forKeyPath:@"resourceID"];
        
        [self removeObserver:self
                  forKeyPath:@"shininess"];
        
        [self removeObserver:self
                  forKeyPath:@"transparency"];
        
        [self removeObserver:self
                  forKeyPath:@"transparencyMode"];
        
        [self removeObserver:self
                  forKeyPath:@"ambient"];
        
        [self removeObserver:self
                  forKeyPath:@"diffuse"];
        
        [self removeObserver:self
                  forKeyPath:@"emission"];
        
        [self removeObserver:self
                  forKeyPath:@"multiply"];
        
        [self removeObserver:self
                  forKeyPath:@"normal"];
        
        [self removeObserver:self
                  forKeyPath:@"reflective"];
        
        [self removeObserver:self
                  forKeyPath:@"specular"];
        
        [self removeObserver:self
                  forKeyPath:@"transparent"];
        
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"cullMode"]) {
            
            self.material.cullMode = self.cullMode.integerValue;
        }
        
        if ([keyPath isEqualToString:@"doubleSided"]) {
            
            self.material.doubleSided = self.doubleSided.boolValue;
        }
        
        if ([keyPath isEqualToString:@"fresnelExponent"]) {
            
            self.material.fresnelExponent = self.fresnelExponent.floatValue;
        }
        
        if ([keyPath isEqualToString:@"lightingModelName"]) {
            
            self.material.lightingModelName = self.lightingModelName;
        }
        
        if ([keyPath isEqualToString:@"litPerPixel"]) {
            
            self.material.litPerPixel = self.litPerPixel.boolValue;
        }
        
        if ([keyPath isEqualToString:@"locksAmbientWithDiffuse"]) {
            
            self.material.locksAmbientWithDiffuse = self.locksAmbientWithDiffuse.boolValue;
        }
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.material.name = [NSString stringWithFormat:@"%@", self.resourceID];
        }
        
        if ([keyPath isEqualToString:@"shininess"]) {
            
            self.material.shininess = self.shininess.floatValue;
        }
        
        if ([keyPath isEqualToString:@"transparency"]) {
            
            self.material.transparency = self.transparency.floatValue;
        }
        
        if ([keyPath isEqualToString:@"transparencyMode"]) {
            
            self.material.transparencyMode = self.transparencyMode.integerValue;
        }
        
        if ([keyPath isEqualToString:@"ambient"]) {
            
            [self.material.ambient setValuesUsingMaterialProperty:self.ambient.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"diffuse"]) {
            
            
            [self.material.diffuse setValuesUsingMaterialProperty:self.diffuse.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"emission"]) {
            
            [self.material.emission setValuesUsingMaterialProperty:self.emission.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"multiply"]) {
            
            [self.material.multiply setValuesUsingMaterialProperty:self.multiply.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"normal"]) {
            
            [self.material.normal setValuesUsingMaterialProperty:self.normal.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"reflective"]) {
            
            [self.material.reflective setValuesUsingMaterialProperty:self.reflective.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"specular"]) {
            
            [self.material.specular setValuesUsingMaterialProperty:self.specular.materialProperty];
        }
        
        if ([keyPath isEqualToString:@"transparent"]) {
            
            [self.material.transparent setValuesUsingMaterialProperty:self.transparent.materialProperty];
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNMaterial *)material
{
    if (!_material) {
        
        // lazily initialize
        
        _material = [SCNMaterial material];
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"cullMode"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"doubleSided"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"fresnelExponent"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"lightingModelName"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"litPerPixel"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"locksAmbientWithDiffuse"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"shininess"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"transparency"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"transparencyMode"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"ambient"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"diffuse"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"emission"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"multiply"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"normal"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"reflective"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"specular"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"transparent"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        // update transient property
        
        // set attributes
        
        self.material.cullMode = self.cullMode.integerValue;
        self.material.doubleSided = self.doubleSided.boolValue;
        self.material.fresnelExponent = self.fresnelExponent.floatValue;
        self.material.lightingModelName = self.lightingModelName;
        self.material.litPerPixel = self.litPerPixel.boolValue;
        self.material.locksAmbientWithDiffuse = self.locksAmbientWithDiffuse.boolValue;
        self.material.name = [NSString stringWithFormat:@"%@", self.resourceID];
        self.material.shininess = self.shininess.floatValue;
        self.material.transparency = self.transparency.floatValue;
        self.material.transparencyMode = self.transparencyMode.integerValue;
        
        // set material properties
        
        [self.material.ambient setValuesUsingMaterialProperty:self.ambient.materialProperty];
        [self.material.diffuse setValuesUsingMaterialProperty:self.diffuse.materialProperty];
        [self.material.emission setValuesUsingMaterialProperty:self.emission.materialProperty];
        [self.material.multiply setValuesUsingMaterialProperty:self.multiply.materialProperty];
        [self.material.normal setValuesUsingMaterialProperty:self.normal.materialProperty];
        [self.material.reflective setValuesUsingMaterialProperty:self.reflective.materialProperty];
        [self.material.specular setValuesUsingMaterialProperty:self.specular.materialProperty];
        [self.material.transparent setValuesUsingMaterialProperty:self.transparent.materialProperty];
        
    }
    
    return _material;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"material";
}

#pragma mark - NOResourceProtocol

+(BOOL)requireSession
{
    return NO;
}

+(NSSet *)requiredInitialProperties
{
    return [NSSet setWithArray:@[@"geometry"]];
}

+(BOOL)canSearchFromSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

+(BOOL)canCreateNewInstanceFromSession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return YES;
}

-(BOOL)canDeleteFromSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

-(NOResourcePermission)permissionForSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName
                                      session:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(NOResourcePermission)permissionForRelationship:(NSString *)relationshipName
                                         session:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(BOOL)canPerformFunction:(NSString *)functionName
                  session:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

-(void)wasCreatedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)attribute:(NSString *)attributeName
wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)attribute:(NSString *)attributeName
wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)relationship:(NSString *)relationshipName
wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)relationship:(NSString *)relationshipName
 wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

+(NSSet *)resourceFunctions
{
    return nil;
}

-(NOResourceFunctionCode)performFunction:(NSString *)functionName
                             withSession:(NSManagedObject<NOSessionProtocol> *)session
                      recievedJsonObject:(NSDictionary *)recievedJsonObject
                                response:(NSDictionary **)jsonObjectResponse
{
    return NOFunctionPerformedSuccesfully;
}

@end
