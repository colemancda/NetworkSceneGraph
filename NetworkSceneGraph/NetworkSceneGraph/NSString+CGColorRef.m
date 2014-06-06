//
//  NSString+CGColorRef.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/29/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSString+CGColorRef.h"

@implementation NSString (CGColorRef)

-(CGColorRef)CGColorRefValue
{
    NSColor *color = [NSColor colorWithCIColor:[CIColor colorWithString:self]];
    
    return color.CGColor;
}

@end
