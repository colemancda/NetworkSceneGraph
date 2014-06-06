//
//  NSGMaterialPropertyContentImageURL.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentImageURL.h"

static void *KVOContext = &KVOContext;

@interface NSGMaterialPropertyContentImageURL ()

@property (nonatomic) NSImage *image;

@end

@implementation NSGMaterialPropertyContentImageURL

@dynamic url;

@synthesize image = _image;

-(void)dealloc
{
    if (self.image) {
        
        [self removeObserver:self
                  forKeyPath:@"url"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"url"]) {
            
            [self willChangeValueForKey:@"contents"];
            
            self.image = [[NSImage alloc] initWithContentsOfURL:[NSURL URLWithString:self.url]];
            
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
        
        self.image = [[NSImage alloc] initWithContentsOfURL:[NSURL URLWithString:self.url]];
        
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
    return @"MaterialPropertyContentImageURL";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"url"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"url"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
