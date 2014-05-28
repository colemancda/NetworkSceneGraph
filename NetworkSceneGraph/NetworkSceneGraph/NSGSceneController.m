//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"

@interface NSGSceneController ()

@property (nonatomic) NSManagedObjectContext *context;

@end

@implementation NSGSceneController

-(void)dealloc
{
    if (self.context) {
        
        [[NSNotificationCenter defaultCenter] removeObserver:self];
        
    }
    
}

#pragma mark - Initialization

-(instancetype)initWithContext:(NSManagedObjectContext *)context;
{
    self = [super init];
    
    if (self) {
        
        self.context = context;
        
        // notifications
        
        if (context) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(updateScenesWithObjectsDidChangeNotification:)
                                                         name:NSManagedObjectContextObjectsDidChangeNotification
                                                       object:context];
        }
        
    }
    
    return self;
}

- (instancetype)init
{
    return nil;
}

#pragma mark - Manage scene

-(void)reloadScenes
{
    
    
}

-(void)updateScenesWithObjectsDidChangeNotification:(NSNotification *)notification
{
    
    
}

@end
