//
//  NSGGeometry.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGGeometry.h"
#import "NSGGeometryElement.h"
#import "NSGGeometrySource.h"
#import "NSGMaterial.h"
#import "NSGNode.h"

static void *KVOContext = &KVOContext;

@implementation NSGGeometry

@dynamic resourceID;
@dynamic geometryElements;
@dynamic geometrySources;
@dynamic materials;
@dynamic node;

@synthesize geometry = _geometry;

-(void)dealloc
{
    if (self.geometry) {
        
        [self removeObserver:self
                  forKeyPath:@"resourceID"];
        
        [self removeObserver:self
                  forKeyPath:@"materials"];
        
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.geometry.name = [NSString stringWithFormat:@"%@", self.resourceID];
            
        }
        
        if ([keyPath isEqualToString:@"materials"]) {
            
            NSMutableArray *materials = [[NSMutableArray alloc] init];
            
            for (NSGMaterial *material in self.materials) {
                
                [materials addObject:material.material];
                
            }
            
            self.geometry.materials = [NSArray arrayWithArray:materials];
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNGeometry *)geometry
{
    if (!_geometry) {
        
        // lazily initialize
        
        if (!self.geometryElements && !self.geometrySources) {
            
            _geometry = [SCNGeometry geometry];
        }
        else {
            
            NSMutableArray *sources = [[NSMutableArray alloc] init];
            
            for (NSGGeometrySource *geometrySource in self.geometrySources) {
                
                [sources addObject:geometrySource.geometrySource];
            }
            
            NSMutableArray *elements = [[NSMutableArray alloc] init];
            
            for (NSGGeometryElement *geometryElement in self.geometryElements) {
                
                [elements addObject:geometryElement.geometryElement];
                
            }
            
            _geometry = [SCNGeometry geometryWithSources:[NSArray arrayWithArray:sources]
                                                elements:[NSArray arrayWithArray:elements]];
        }
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"materials"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        // setup
        
        self.geometry.name = [NSString stringWithFormat:@"%@", self.resourceID];
        
        NSMutableArray *materials = [[NSMutableArray alloc] init];
        
        for (NSGMaterial *material in self.materials) {
            
            [materials addObject:material.material];
            
        }
        
        self.geometry.materials = [NSArray arrayWithArray:materials];
        
        
    }
    return _geometry;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"geometry";
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
    // cant edit properties that can only be set when created
    
    if ([relationshipName isEqualToString:@"geometryElements"] && self.geometryElements) {
        
        return NOReadOnlyPermission;
    }
    
    if ([relationshipName isEqualToString:@"geometrySources"] && self.geometrySources) {
        
        return NOReadOnlyPermission;
    }
    
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
