//
//  SGSAppDelegate.m
//  SceneGraphServer
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "SGSAppDelegate.h"

@interface SGSAppDelegate ()

@property (nonatomic) NOServer *server;

@property (nonatomic) NOStore *store;

@end

@implementation SGSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[NSManagedObjectModel NSGModel]];
    
    NSError *error;
    
    [psc addPersistentStoreWithType:NSInMemoryStoreType
                      configuration:nil
                                URL:nil
                            options:nil
                              error:&error];
    
    NSAssert(!error, @"Could not create the In-Memory persistent store");
    
    self.store = [[NOStore alloc] initWithPersistentStoreCoordinator:psc
                                                          lastIDsURL:nil];
    
    self.server = [NOServer NSGServerWithStore:self.store];
    
    [self.server startOnPort:8080];
}

@end
