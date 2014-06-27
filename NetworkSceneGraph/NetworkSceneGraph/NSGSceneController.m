//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/21/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"
#import "NSGScene.h"
#import "NSGNode.h"

static void *KVOContext = &KVOContext;

@interface NSGSceneController ()

@property (nonatomic) SCNScene *scene;

@property (nonatomic) SCNCamera *pointOfView;

@end

@implementation NSGSceneController

-(void)dealloc
{
    if (self.store) {
        
        [[NSNotificationCenter defaultCenter] removeObserver:self];
    }
    
    // KVO
    
    [self removeObserver:self
              forKeyPath:NSStringFromSelector(@selector(store))
                 context:KVOContext];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // KVO
        
        [self addObserver:self
               forKeyPath:NSStringFromSelector(@selector(store))
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:KVOContext];
        
    }
    return self;
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:NSStringFromSelector(@selector(store))]) {
            
            NOStore *oldValue = change[NSKeyValueChangeOldKey];
            
            NOStore *newValue = change[NSKeyValueChangeNewKey];
            
            if (oldValue) {
                
                [[NSNotificationCenter defaultCenter] removeObserver:self
                                                                name:NSManagedObjectContextObjectsDidChangeNotification
                                                              object:oldValue];
            }
            
            if (newValue) {
                
                [[NSNotificationCenter defaultCenter] addObserver:self
                                                         selector:@selector(managedObjectContextObjectsDidChangeNotification:)
                                                             name:NSManagedObjectContextObjectsDidChangeNotification
                                                           object:newValue];
            }
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Fetch Scnene

-(void)fetchScene
{
    [self.store fetchEntityWithName:@"NSGScene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        [self.delegate sceneController:self didFetchSceneWithError:error];
        
        if (error) {
            
            return;
        }
        
        NSGScene *scene = (NSGScene *)managedObject;
        
        // download root nodes
        
        for (NSGNode *rootNode in scene.nodes) {
            
            // fetch
            
            
            
        }
        
    }];
    
}

#pragma mark - Internal Methods

-(void)managedObjectContextObjectsDidChangeNotification:(NSNotification *)notification
{
    
    
}

@end
