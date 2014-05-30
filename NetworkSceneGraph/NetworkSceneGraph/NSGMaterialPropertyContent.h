//
//  NSGMaterialPropertyContent.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <NetworkObjects/NetworkObjects.h>

@class NSGMaterialProperty;

@interface NSGMaterialPropertyContent : NSManagedObject <NOResourceProtocol>

@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) NSGMaterialProperty *material;

@property (nonatomic, readonly) id contents;

@end
