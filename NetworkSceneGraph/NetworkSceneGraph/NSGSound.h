//
//  NSGSound.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/29/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>

@class NSGNode, NSGSoundDataSource;

@interface NSGSound : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGSoundDataSource *dataSource;

@end
