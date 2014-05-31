//
//  NOAPICachedStore+NetworkSceneGraph.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/31/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NOAPICachedStore+NetworkSceneGraph.h"
#import "NSManagedObjectModel+NetworkSceneGraph.h"

@implementation NOAPICachedStore (NetworkSceneGraph)

+(instancetype)NSGAPICachedStoreWithDateCachedAttributeName:(NSString *)dateCachedAttributeName
{
    NSMutableDictionary *options = [[NSMutableDictionary alloc] init];
    
    if (dateCachedAttributeName) {
        
        [options addEntriesFromDictionary:@{NOAPICachedStoreDateCachedAttributeNameOption: dateCachedAttributeName}];
    }
    
    [options addEntriesFromDictionary:@{NOAPISearchPathOption: @"search",
                                        NOAPIModelOption: [NSManagedObjectModel NSGModel]}];
    
    return [[NOAPICachedStore alloc] initWithOptions:options];
}

@end
