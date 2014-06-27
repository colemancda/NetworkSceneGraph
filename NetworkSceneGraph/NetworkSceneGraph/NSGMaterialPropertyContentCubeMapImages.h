//
//  NSGMaterialPropertyContentCubeMapImages.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGMaterialPropertyContent.h"


@interface NSGMaterialPropertyContentCubeMapImages : NSGMaterialPropertyContent

@property (nonatomic, retain) NSData * backImageData;
@property (nonatomic, retain) NSData * bottomImageData;
@property (nonatomic, retain) NSData * frontImageData;
@property (nonatomic, retain) NSData * leftImageData;
@property (nonatomic, retain) NSData * rightImageData;
@property (nonatomic, retain) NSData * topImageData;

@end
