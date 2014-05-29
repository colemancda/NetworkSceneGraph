//
//  NSGLight.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGLight.h"
#import "NSGMaterialProperty.h"
#import "NSGNode.h"
#import "NSString+CGColorRef.h"

static void *KVOContext = &KVOContext;

@implementation NSGLight

@dynamic castsShadow;
@dynamic color;
@dynamic lightAttenuationEnd;
@dynamic lightAttenuationFalloffExponent;
@dynamic lightAttenuationStart;
@dynamic lightShadowFarClipping;
@dynamic lightShadowNearClipping;
@dynamic lightSpotInnerAngle;
@dynamic lightSpotOuterAngle;
@dynamic resourceID;
@dynamic shadowColor;
@dynamic shadowRadius;
@dynamic type;
@dynamic node;

@synthesize light = _light;

-(void)dealloc
{
    if (self.light) {
        
        [self removeObserver:self
                  forKeyPath:@"resourceID"];
        
        [self removeObserver:self
                  forKeyPath:@"color"];
        
        [self removeObserver:self
                  forKeyPath:@"type"];
        
        [self removeObserver:self
                  forKeyPath:@"castsShadow"];
        
        [self removeObserver:self
                  forKeyPath:@"shadowColor"];
        
        [self removeObserver:self
                  forKeyPath:@"lightAttenuationEnd"];
        
        [self removeObserver:self
                  forKeyPath:@"lightAttenuationFalloffExponent"];
        
        [self removeObserver:self
                  forKeyPath:@"lightAttenuationStart"];
        
        [self removeObserver:self
                  forKeyPath:@"lightShadowFarClipping"];
        
        [self removeObserver:self
                  forKeyPath:@"lightShadowNearClipping"];
        
        [self removeObserver:self
                  forKeyPath:@"lightSpotInnerAngle"];
        
        [self removeObserver:self
                  forKeyPath:@"lightSpotOuterAngle"];
        
        [self removeObserver:self
                  forKeyPath:@"shadowRadius"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.light.name = [NSString stringWithFormat:@"%@", self.resourceID];
            
        }
        
        if ([keyPath isEqualToString:@"color"]) {
            
            self.light.color = (__bridge id)([self.color CGColorRefValue]);
            
        }
        
        if ([keyPath isEqualToString:@"shadowColor"]) {
            
            self.light.shadowColor = (__bridge id)([self.shadowColor CGColorRefValue]);
            
        }
        
        if ([keyPath isEqualToString:@"type"]) {
            
            self.light.type = self.type;
            
        }
        
        if ([keyPath isEqualToString:@"castsShadow"]) {
            
            self.light.castsShadow = self.castsShadow.boolValue;
            
        }
        
        if ([keyPath isEqualToString:@"shadowRadius"]) {
            
            self.light.shadowRadius = self.shadowRadius.floatValue;
            
        }
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.light.name = [NSString stringWithFormat:@"%@", self.resourceID];
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNLight *)light
{
    if (!_light) {
        
        // Lazy initialization
        
        _light = [SCNLight light];
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"color"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"shadowColor"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"type"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"castsShadow"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"shadowRadius"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
    }
    
    return _light;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"light";
}

#pragma mark - NOResourceProtocol

+(BOOL)requireSession
{
    return NO;
}

+(NSSet *)requiredInitialProperties
{
    return [NSSet setWithArray:@[@"node"]];
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
