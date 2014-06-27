//
//  NSGSoundDataSource.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGSound;

@interface NSGSoundDataSource : NSManagedObject

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGSound *sound;

@end
