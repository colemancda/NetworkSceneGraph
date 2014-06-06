//
//  NSString+SCNVector3.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSString+SCNVector3.h"

@implementation NSString (SCNVector3)

-(SCNVector3)SCNVector3Value
{
    NSData *stringData = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    NSArray *jsonObject = [NSJSONSerialization JSONObjectWithData:stringData
                                                          options:NSJSONReadingAllowFragments
                                                            error:nil];
    NSNumber *xNumber = jsonObject[0];
    
    NSNumber *yNumber = jsonObject[1];
    
    NSNumber *zNumber = jsonObject[2];
    
    SCNVector3 vector = SCNVector3Make(xNumber.floatValue,
                                       yNumber.floatValue,
                                       zNumber.floatValue);
    
    return vector;
}

@end
