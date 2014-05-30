//
//  NSGMaterialPropertyContentImageURL.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentImageURL.h"


@implementation NSGMaterialPropertyContentImageURL

@dynamic url;

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentImageURL";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"url"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"url"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
