//
//  NOServer+NetworkSceneGraph.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/30/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <NetworkObjects/NetworkObjects.h>

@interface NOServer (NetworkSceneGraph)

+(instancetype)NSGServerWithStore:(NOStore *)store;

@end
