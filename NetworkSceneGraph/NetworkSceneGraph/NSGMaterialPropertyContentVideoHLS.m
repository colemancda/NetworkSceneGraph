//
//  NSGMaterialPropertyContentVideoHLS.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentVideoHLS.h"

static void *KVOContext = &KVOContext;

@interface NSGMaterialPropertyContentVideoHLS ()

@property (nonatomic) AVPlayer *player;

@end

@implementation NSGMaterialPropertyContentVideoHLS

@dynamic url;

@synthesize player = _player;

-(void)dealloc
{
    if (self.url) {
        
        [self removeObserver:self
                  forKeyPath:@"url"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"url"]) {
            
            CALayer *layer = self.contents;
            
            
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(id)contents
{
    if (!_layer) {
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"url"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        self.player = [AVPlayer playerWithURL:[NSURL URLWithString:self.url]];
        
        
        
    }
    
    return _layer;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentVideoHLS";
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
