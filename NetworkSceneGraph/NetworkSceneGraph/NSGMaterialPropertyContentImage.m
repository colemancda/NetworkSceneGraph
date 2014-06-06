//
//  NSGMaterialPropertyContentImage.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentImage.h"

static void *KVOContext = &KVOContext;

@interface NSGMaterialPropertyContentImage ()

@property (nonatomic) NSImage *image;

@end

@implementation NSGMaterialPropertyContentImage

@dynamic data;

@synthesize image = _image;

-(void)dealloc
{
    if (self.image) {
        
        [self removeObserver:self
                  forKeyPath:@"data"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"data"]) {
            
            [self willChangeValueForKey:@"contents"];
            
            self.image = [[NSImage alloc] initWithData:self.data];
            
            [self didChangeValueForKey:@"contents"];
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(id)contents
{
    if (!_image) {
        
        // lazily initialize
        
        self.image = [[NSImage alloc] initWithData:self.data];
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"url"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
    }
    
    return _image;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentImage";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"data"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"data"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
