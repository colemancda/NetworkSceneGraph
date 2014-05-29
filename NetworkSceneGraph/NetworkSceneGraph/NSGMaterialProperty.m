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
@dynamic content;
@dynamic diffuseMaterial;
@dynamic emissionMaterial;
@dynamic multiplyMaterial;
@dynamic normalMaterial;
@dynamic reflectiveMaterial;
@dynamic specularMaterial;
@dynamic transparentMaterial;

@synthesize materialProperty = _materialProperty;

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
    return [NSSet setWithArray:@[@"content"]];
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
