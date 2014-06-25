//
//  NSGSceneController.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/21/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGSceneController.h"

@interface NSGSceneController ()

@end

@implementation NSGSceneController

-(void)fetchScene
{
    // fetch the scene according to the resource ID
    
    [self.store fetchEntityWithName:@"NSGScene" resourceID:self.sceneResourceID URLSession:self.URLSession completion:^(NSError *error, NSManagedObject *managedObject) {
        
        if (error) {
            
            [self.store.managedObjectContext performBlock:^{
                
                [self.delegate sceneController:self didFetchScene:nil withError:error];
                
            }];
            
            return;
        }
        
        
        
    }];
}

@end
