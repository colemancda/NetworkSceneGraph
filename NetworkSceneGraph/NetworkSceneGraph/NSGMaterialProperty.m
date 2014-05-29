//
//  NSGMaterialProperty.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialProperty.h"
#import "NSGLight.h"
#import "NSGMaterial.h"
#import "NSGMaterialPropertyContent.h"
#import "NSGScene.h"

static void *KVOContext = &KVOContext;

@implementation NSGMaterialProperty

@dynamic intensity;
@dynamic magnificationFilter;
@dynamic mappingChannel;
@dynamic maxAnisotropy;
@dynamic minificationFilter;
@dynamic mipFilter;
@dynamic resourceID;
@dynamic wrapS;
@dynamic wrapT;
@dynamic ambientMaterial;
@dynamic backgroundScene;
@dynamic contents;
@dynamic diffuseMaterial;
@dynamic emissionMaterial;
@dynamic multiplyMaterial;
@dynamic normalMaterial;
@dynamic reflectiveMaterial;
@dynamic specularMaterial;
@dynamic transparentMaterial;

@synthesize materialProperty = _materialProperty;

-(void)dealloc
{
    if (self.materialProperty) {
        
        [self removeObserver:self
                  forKeyPath:@"intensity"];
        
        [self removeObserver:self
                  forKeyPath:@"magnificationFilter"];
        
        [self removeObserver:self
                  forKeyPath:@"mappingChannel"];
        
        [self removeObserver:self
                  forKeyPath:@"maxAnisotropy"];
        
        [self removeObserver:self
                  forKeyPath:@"minificationFilter"];
        
        [self removeObserver:self
                  forKeyPath:@"mipFilter"];
        
        [self removeObserver:self
                  forKeyPath:@"wrapS"];
        
        [self removeObserver:self
                  forKeyPath:@"wrapT"];
        
        [self removeObserver:self
                  forKeyPath:@"contents"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"intensity"]) {
            
            self.materialProperty.intensity = self.intensity.floatValue;
        }
        
        if ([keyPath isEqualToString:@"magnificationFilter"]) {
            
            self.materialProperty.magnificationFilter = self.magnificationFilter.floatValue;
        }
        
        if ([keyPath isEqualToString:@"mappingChannel"]) {
            
            self.materialProperty.mappingChannel = self.mappingChannel.integerValue;
        }
        
        if ([keyPath isEqualToString:@"maxAnisotropy"]) {
            
            self.materialProperty.maxAnisotropy = self.maxAnisotropy.floatValue;
        }
        
        if ([keyPath isEqualToString:@"minificationFilter"]) {
            
            self.materialProperty.minificationFilter = self.minificationFilter.integerValue;
        }
        
        if ([keyPath isEqualToString:@"mipFilter"]) {
            
            self.materialProperty.mipFilter = self.mipFilter.integerValue;
        }
        
        if ([keyPath isEqualToString:@"wrapS"]) {
            
            self.materialProperty.wrapS = self.wrapS.integerValue;
        }
        
        if ([keyPath isEqualToString:@"wrapT"]) {
            
            self.materialProperty.wrapT = self.wrapT.integerValue;
        }
        
        if ([keyPath isEqualToString:@"contents"]) {
            
            self.materialProperty.contents = self.contents.contents;
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNMaterialProperty *)materialProperty
{
    if (!_materialProperty) {
        
        // lazy initialization
        
        _materialProperty = [SCNMaterialProperty materialPropertyWithContents:self.contents.contents];
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"intensity"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"magnificationFilter"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"mappingChannel"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"maxAnisotropy"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"minificationFilter"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"mipFilter"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"wrapS"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"wrapT"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"contents"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        // set initial values
        
        self.materialProperty.intensity = self.intensity.floatValue;
        
        self.materialProperty.magnificationFilter = self.magnificationFilter.floatValue;
        
        self.materialProperty.mappingChannel = self.mappingChannel.integerValue;
        
        self.materialProperty.maxAnisotropy = self.maxAnisotropy.floatValue;
        
        self.materialProperty.minificationFilter = self.minificationFilter.integerValue;
        
        self.materialProperty.mipFilter = self.mipFilter.integerValue;
        
        self.materialProperty.wrapS = self.wrapS.integerValue;
        
        self.materialProperty.wrapT = self.wrapT.integerValue;
        
        self.materialProperty.contents = self.contents.contents;
        
    }
    
    return _materialProperty;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"materialProperty";
}

#pragma mark - NOResourceProtocol

+(BOOL)requireSession
{
    return NO;
}

+(NSSet *)requiredInitialProperties
{
    return [NSSet setWithArray:@[@"contents"]];
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
