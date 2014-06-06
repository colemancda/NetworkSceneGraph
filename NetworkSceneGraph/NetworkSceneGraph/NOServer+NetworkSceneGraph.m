//
//  NOServer+NetworkSceneGraph.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/30/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NOServer+NetworkSceneGraph.h"

@implementation NOServer (NetworkSceneGraph)

+(instancetype)NSGServerWithStore:(NOStore *)store
{
    NSDictionary *options = @{NOServerSearchPathOption: @"search",
                              NOServerStoreOption : store};
    
    return [[NOServer alloc] initWithOptions:options];
}

@end
