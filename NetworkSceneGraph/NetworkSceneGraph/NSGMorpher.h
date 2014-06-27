//
//  NSGMorpher.h
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 6/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSGGeometry, NSGNode;

@interface NSGMorpher : NSManagedObject

@property (nonatomic, retain) NSNumber * calculationMode;
@property (nonatomic, retain) NSNumber * resourceID;
@property (nonatomic, retain) id weights;
@property (nonatomic, retain) NSGNode *node;
@property (nonatomic, retain) NSSet *targets;
@end

@interface NSGMorpher (CoreDataGeneratedAccessors)

- (void)addTargetsObject:(NSGGeometry *)value;
- (void)removeTargetsObject:(NSGGeometry *)value;
- (void)addTargets:(NSSet *)values;
- (void)removeTargets:(NSSet *)values;

@end
