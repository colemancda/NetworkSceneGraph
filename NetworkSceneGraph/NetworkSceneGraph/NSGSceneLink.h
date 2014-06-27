//
//  NSGSceneLink.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGLink.h"


@interface NSGSceneLink : NSGLink

@property (nonatomic, retain) NSNumber * destinationNodeResourceID;
@property (nonatomic, retain) NSNumber * sceneResourceID;

@end
