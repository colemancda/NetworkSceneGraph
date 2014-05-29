//
//  NSGCamera.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGCamera.h"
#import "NSGNode.h"
#import "NSGScene.h"

static void *KVOContext = &KVOContext;

@implementation NSGCamera

@dynamic zNear;
@dynamic zFar;
@dynamic yFov;
@dynamic xFov;
@dynamic usesOrthographicProjection;
@dynamic orthographicScale;
@dynamic focalSize;
@dynamic focalDistance;
@dynamic focalBlurRadius;
@dynamic automaticallyAdjustsZRange;
@dynamic aperture;
@dynamic resourceID;
@dynamic node;
@dynamic pointOfViewScene;

@synthesize camera = _camera;

-(void)dealloc
{
    if (self.camera) {
        
        [self removeObserver:self
                  forKeyPath:@"zNear"];
        
        [self removeObserver:self
                  forKeyPath:@"zFar"];
        
        [self removeObserver:self
                  forKeyPath:@"yFov"];
        
        [self removeObserver:self
                  forKeyPath:@"xFov"];
        
        [self removeObserver:self
                  forKeyPath:@"usesOrthographicProjection"];
        
        [self removeObserver:self
                  forKeyPath:@"orthographicScale"];
        
        [self removeObserver:self
                  forKeyPath:@"focalSize"];
        
        [self removeObserver:self
                  forKeyPath:@"focalDistance"];
        
        [self removeObserver:self
                  forKeyPath:@"focalBlurRadius"];
        
        [self removeObserver:self
                  forKeyPath:@"automaticallyAdjustsZRange"];
        
        [self removeObserver:self
                  forKeyPath:@"aperture"];
        
        [self removeObserver:self
                  forKeyPath:@"resourceID"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"zNear"]) {
            
            self.camera.zNear = self.zNear.doubleValue;
        }
        
        if ([keyPath isEqualToString:@"zFar"]) {
            
            self.camera.zFar = self.zFar.doubleValue;
        }
        
        if ([keyPath isEqualToString:@"yFov"]) {
            
            self.camera.yFov = self.yFov.doubleValue;
        }
        
        if ([keyPath isEqualToString:@"xFov"]) {
            
            self.camera.xFov = self.xFov.doubleValue;
        }
        
        if ([keyPath isEqualToString:@"usesOrthographicProjection"]) {
            
            self.camera.usesOrthographicProjection = self.usesOrthographicProjection.boolValue;
        }
        
        if ([keyPath isEqualToString:@"orthographicScale"]) {
            
            self.camera.orthographicScale = self.orthographicScale.doubleValue;
        }
        
        if ([keyPath isEqualToString:@"focalSize"]) {
            
            self.camera.focalSize = self.focalSize.floatValue;
        }
        
        if ([keyPath isEqualToString:@"focalDistance"]) {
            
            self.camera.focalDistance = self.focalDistance.floatValue;
        }
        
        if ([keyPath isEqualToString:@"focalBlurRadius"]) {
            
            self.camera.focalBlurRadius = self.focalBlurRadius.floatValue;
        }
        
        if ([keyPath isEqualToString:@"automaticallyAdjustsZRange"]) {
            
            self.camera.automaticallyAdjustsZRange = self.automaticallyAdjustsZRange.boolValue;
        }
        
        if ([keyPath isEqualToString:@"aperture"]) {
            
            self.camera.aperture = self.aperture.floatValue;
        }
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.camera.name = [NSString stringWithFormat:@"%@", self.resourceID];
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNCamera *)camera
{
    if (!_camera) {
        
        // Lazily initialze
        
        _camera = [SCNCamera camera];
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"zNear"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"zFar"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"yFov"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"xFov"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"usesOrthographicProjection"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"orthographicScale"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"focalSize"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"focalDistance"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"focalBlurRadius"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"automaticallyAdjustsZRange"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"aperture"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        // Set properties
        
        self.camera.zNear = self.zNear.doubleValue;
        
        self.camera.zFar = self.zFar.doubleValue;
        
        self.camera.yFov = self.yFov.doubleValue;
        
        self.camera.xFov = self.xFov.doubleValue;
        
        self.camera.usesOrthographicProjection = self.usesOrthographicProjection.boolValue;
        
        self.camera.orthographicScale = self.orthographicScale.doubleValue;
        
        self.camera.focalSize = self.focalSize.floatValue;
        
        self.camera.focalDistance = self.focalDistance.floatValue;
        
        self.camera.focalBlurRadius = self.focalBlurRadius.floatValue;
        
        self.camera.automaticallyAdjustsZRange = self.automaticallyAdjustsZRange.boolValue;
        
        self.camera.aperture = self.aperture.floatValue;
        
        self.camera.name = [NSString stringWithFormat:@"%@", self.resourceID];
        
    }
    
    return _camera;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"camera";
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
