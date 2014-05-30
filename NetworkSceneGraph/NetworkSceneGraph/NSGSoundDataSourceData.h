//
//  NSGSoundDataSourceData.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/29/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>
#import "NSGSoundDataSource.h"

@interface NSGSoundDataSourceData : NSGSoundDataSource

@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSNumber * loops;

@end
