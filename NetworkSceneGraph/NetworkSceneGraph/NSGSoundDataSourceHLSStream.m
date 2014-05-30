//
//  NSGSoundDataSourceHLSStream.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/29/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSoundDataSourceHLSStream.h"


@implementation NSGSoundDataSourceHLSStream

@dynamic url;

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"SoundDataSourceHLSStream";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"url"]];
}

@end
