//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"

@interface NSGSceneController ()

@property (nonatomic) SCNScene *scene;

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

-(instancetype)initWithScene:(SCNScene *)scene
                     context:(NSManagedObjectContext *)context;
{
    if (!scene) {
        
        return [self init];
    }
    
    self = [super init];
    
    if (self) {
        
        self.scene = scene;
        
        self.context = context;
        
        // notifications
        
        if (context) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(updateSceneWithObjectsDidChangeNotification:)
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

-(void)reloadScene
{
    
    
}

-(void)updateSceneWithObjectsDidChangeNotification:(NSNotification *)notification
{
    
    
}

@end
