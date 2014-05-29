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
        
        // Set properties
        
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
