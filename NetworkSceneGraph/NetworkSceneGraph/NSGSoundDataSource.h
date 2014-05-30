//
//  NSGSoundDataSource.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/29/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>

@class NSGSound;

@interface NSGSoundDataSource : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGSound *sound;

@end
