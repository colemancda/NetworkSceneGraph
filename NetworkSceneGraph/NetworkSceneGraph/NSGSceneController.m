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

@end

@implementation NSGSceneController

#pragma mark - Initialization

-(instancetype)initWithScene:(SCNScene *)scene;
{
    if (!scene) {
        
        return [self init];
    }
    
    self = [super init];
    
    if (self) {
        
        self.scene = scene;
    }
    
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.scene = [SCNScene scene];
        
    }
    return self;
}

@end
