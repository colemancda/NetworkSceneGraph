//
//  NSGSoundDataSourceData.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGSoundDataSource.h"


@interface NSGSoundDataSourceData : NSGSoundDataSource

@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSNumber * loops;

@end
