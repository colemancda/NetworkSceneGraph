//
//  NSGLink.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode;

@interface NSGLink : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSGNode *node;

@end
