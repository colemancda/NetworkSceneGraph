//
//  NSGGeometrySource.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGGeometrySource.h"
#import "NSGGeometry.h"


@implementation NSGGeometrySource

@dynamic bytesPerComponent;
@dynamic componentsPerVector;
@dynamic data;
@dynamic dataOffset;
@dynamic dataStride;
@dynamic floatComponents;
@dynamic resourceID;
@dynamic semantic;
@dynamic vectorCount;
@dynamic geometry;

@synthesize geometrySource = _geometrySource;

#pragma mark - Transient Properties

-(SCNGeometrySource *)geometrySource
{
    if (!_geometrySource) {
        
        _geometrySource = [SCNGeometrySource geometrySourceWithData:self.data
                                                           semantic:self.semantic
                                                        vectorCount:self.vectorCount.integerValue
                                                    floatComponents:self.floatComponents.boolValue
                                                componentsPerVector:self.componentsPerVector.integerValue
                                                  bytesPerComponent:self.bytesPerComponent.integerValue
                                                         dataOffset:self.dataOffset.integerValue
                                                         dataStride:self.dataStride.integerValue];
    }
    
    return _geometrySource;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"geometrySource";
}

#pragma mark - NOResourceProtocol

+(BOOL)requireSession
{
    return NO;
}

+(NSSet *)requiredInitialProperties
{
    return [NSSet setWithArray:@[@"data",
                                 @"bytesPerComponent",
                                 @"componentsPerVector",
                                 @"dataOffset",
                                 @"dataStride",
                                 @"floatComponents",
                                 @"semantic",
                                 @"vectorCount"]];
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
    // all attributes are immutable
    
    return NOReadOnlyPermission;
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
