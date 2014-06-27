//
//  NSGSound.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGNode, NSGSoundDataSource;

@interface NSGSound : NSManagedObject

@property (nonatomic, retain) NSNumber * gain;
@property (nonatomic, retain) NSNumber * pitch;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSGSoundDataSource *soundSource;

@end
