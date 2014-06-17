//
//  NSGServerController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/17/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGServerController.h"
#import "NSManagedObjectModel+NetworkSceneGraph.h"

@interface NSGServerController ()

@property (nonatomic) NOServer *server;

@end

@implementation NSGServerController

- (instancetype)initWithSSLIdentityAndCertificates:(NSArray *)sslIdentityAndCertificates
{
    self = [super init];
    if (self) {
        
        self.server = [[NOServer alloc] initWithDataSource:self
                                                  delegate:self
                                        managedObjectModel:[NSManagedObjectModel NSGModel]
                                                searchPath:@"search"
                                   resourceIDAttributeName:@"resourceID"
                                           prettyPrintJSON:NO
                                sslIdentityAndCertificates:sslIdentityAndCertificates];
        
    }
    return self;
}

- (instancetype)init
{
    return [self initWithSSLIdentityAndCertificates:nil];
}

#pragma mark - NOServerDataSource

-(NSManagedObjectContext *)server:(NOServer *)server
   managedObjectContextForRequest:(RouteRequest *)request
                         withType:(NOServerRequestType)requestType
{
    
    
}

-(NSNumber *)server:(NOServer *)server newResourceIDForEntity:(NSEntityDescription *)entity
{
    
    
}

-(NSString *)server:(NOServer *)server resourcePathForEntity:(NSEntityDescription *)entity
{
    
    
}

-(NSSet *)server:(NOServer *)server functionsForEntity:(NSEntityDescription *)entity
{
    
    
}

#pragma mark - NOServerDelegate



@end
