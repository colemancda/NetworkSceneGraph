//
//  NOAPICachedStore+NetworkSceneGraph.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/31/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <NetworkObjects/NetworkObjects.h>

@interface NOAPICachedStore (NetworkSceneGraph)

+(instancetype)NSGAPICachedStoreWithDateCachedAttributeName:(NSString *)dateCachedAttributeName;

@end
