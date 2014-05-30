//
//  NSGMaterialPropertyContentImage.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentImage.h"


@implementation NSGMaterialPropertyContentImage

@dynamic data;

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentImage";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"data"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"data"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
