//
//  NSGServerController.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/17/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NetworkObjects/NetworkObjects.h>

@interface NSGServerController : NSObject <NOServerDataSource, NOServerDelegate>

#pragma mark - Initialization

-(instancetype)initWithSSLIdentityAndCertificates:(NSArray *)sslIdentityAndCertificates NS_DESIGNATED_INITIALIZER;

#pragma mark - Properties

@property (nonatomic, readonly) NOServer *server;

@end
