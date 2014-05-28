//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"
#import "NSGScene.h"

@interface NSGSceneController ()

@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic) NSDictionary *scenes;

@end

@implementation NSGSceneController

-(void)dealloc
{
    if (self.managedObjectContext) {
        
        [[NSNotificationCenter defaultCenter] removeObserver:self];
        
    }
    
}

#pragma mark - Initialization

-(instancetype)initWithContext:(NSManagedObjectContext *)context;
{
    self = [super init];
    
    if (self) {
        
        self.managedObjectContext = context;
        
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
    NSFetchRequest *scenesFetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"NSGScene"];
    
    scenesFetchRequest.returnsObjectsAsFaults = NO;
    
    scenesFetchRequest.includesPropertyValues = YES;
    
    __block NSError *error;
    
    __block NSArray *results;
    
    [self.managedObjectContext performBlockAndWait:^{
        
        // execute fetch request
        
        results = [self.managedObjectContext executeFetchRequest:scenesFetchRequest
                                                           error:&error];
        
    }];
    
    if (error) {
        
        [NSException raise:NSInternalInconsistencyException
                    format:@"%@", error.localizedDescription];
        
        return;
    }
    
    __block NSMutableDictionary *scenesDictionary = [[NSMutableDictionary alloc] init];
    
    [self.managedObjectContext performBlockAndWait:^{
        
        for (NSGScene *networkScene in results) {
            
            SCNScene *scene = [SCNScene scene];
            
            [scenesDictionary setObject:scene
                                 forKey:networkScene.resourceID];
            
            
            
        }
        
    }];
    
    self.scenes = [NSDictionary dictionaryWithDictionary:scenesDictionary];
}

-(void)updateScenesWithObjectsDidChangeNotification:(NSNotification *)notification
{
    
    
}

@end
