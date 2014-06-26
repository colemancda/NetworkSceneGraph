//
//  NSGText.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/26/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGGeometry.h"


@interface NSGText : NSGGeometry

@property (nonatomic, retain) NSString * alignmentMode;
@property (nonatomic, retain) NSData * attributedStringData;
@property (nonatomic, retain) NSNumber * chamferRadius;
@property (nonatomic, retain) NSNumber * containerFrame;
@property (nonatomic, retain) NSNumber * extrusionDepth;
@property (nonatomic, retain) NSNumber * textSize;
@property (nonatomic, retain) NSString * truncationMode;
@property (nonatomic, retain) NSNumber * wrapped;

@end
