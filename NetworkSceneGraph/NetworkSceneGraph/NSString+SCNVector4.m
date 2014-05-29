//
//  NSString+SCNVector4.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSString+SCNVector4.h"

@implementation NSString (SCNVector4)

-(SCNVector4)SCNVector4Value
{
    NSData *stringData = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    NSArray *jsonObject = [NSJSONSerialization JSONObjectWithData:stringData
                                                          options:NSJSONReadingAllowFragments
                                                            error:nil];
    NSNumber *xNumber = jsonObject[0];
    
    NSNumber *yNumber = jsonObject[1];
    
    NSNumber *zNumber = jsonObject[2];
    
    NSNumber *wNumber = jsonObject[3];
    
    SCNVector4 vector = SCNVector4Make(xNumber.floatValue,
                                       yNumber.floatValue,
                                       zNumber.floatValue,
                                       wNumber.floatValue);
    
    return vector;
}

@end
