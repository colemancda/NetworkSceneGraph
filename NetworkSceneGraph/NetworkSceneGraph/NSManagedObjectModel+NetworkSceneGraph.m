//
//  NSManagedObjectModel+NetworkSceneGraph.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/30/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSManagedObjectModel+NetworkSceneGraph.h"

@implementation NSManagedObjectModel (NetworkSceneGraph)

+(instancetype)NSGModel
{
    NSURL *frameworkURL = [[NSBundle mainBundle] URLForResource:@"NetworkSceneGraph" withExtension:@"framework"];
    
    NSBundle *frameworkBundle = [NSBundle bundleWithURL:frameworkURL];
    
    NSURL *modelURL = [frameworkBundle URLForResource:@"NSGModel" withExtension:@"momd"];
    
    return [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
}

@end
