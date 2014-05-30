//
//  NSGMaterialPropertyContentColor.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentColor.h"


@implementation NSGMaterialPropertyContentColor

@dynamic value;

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentColor";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"value"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"value"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
