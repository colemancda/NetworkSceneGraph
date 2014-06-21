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
#if TARGET_OS_IPHONE
    UIColor *color = [UIColor colorWithCIColor:[CIColor colorWithString:self]];
    
#else
    NSColor *color = [NSColor colorWithCIColor:[CIColor colorWithString:self]];
#endif

    return color.CGColor;
}

@end
