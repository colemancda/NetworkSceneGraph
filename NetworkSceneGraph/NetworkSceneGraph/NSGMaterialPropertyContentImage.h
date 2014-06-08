//
//  NSGMaterialPropertyContentImage.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGMaterialPropertyContent.h"
#import <NetworkObjects/NetworkObjects.h>


@interface NSGMaterialPropertyContentImage : NSGMaterialPropertyContent

@property (nonatomic, retain) NSData * data;

#pragma mark - Transient Properties

@property (nonatomic, readonly) NSImage *image;

@end