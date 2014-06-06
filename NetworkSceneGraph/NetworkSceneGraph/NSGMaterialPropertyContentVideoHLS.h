//
//  NSGMaterialPropertyContentVideoHLS.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "NSGMaterialPropertyContent.h"
#import <NetworkObjects/NetworkObjects.h>
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>

@interface NSGMaterialPropertyContentVideoHLS : NSGMaterialPropertyContent <NOResourceProtocol>
{
    // Transient variables
    
    AVPlayerLayer *_layer;
}

@property (nonatomic, retain) NSString * url;

#pragma mark - Transient Properties

@property (nonatomic, readonly) AVPlayer *player;

@end
