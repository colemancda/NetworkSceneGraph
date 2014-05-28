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
    }
    
    return self;
}

#pragma mark - 

@end
