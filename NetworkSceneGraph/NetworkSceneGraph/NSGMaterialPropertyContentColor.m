//
//  NSGMaterialPropertyContentColor.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGMaterialPropertyContentColor.h"
#import "NSString+CGColorRef.h"

static void *KVOContext = &KVOContext;

@implementation NSGMaterialPropertyContentColor

@dynamic value;

-(void)dealloc
{
    if (_color) {
        
        [self removeObserver:self
                  forKeyPath:@"value"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"value"]) {
            
            _color = self.value.CGColorRefValue;
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(id)contents
{
    if (!_color) {
        
        // lazily initialize
        
        _color = self.value.CGColorRefValue;
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"value"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
    }
    
    return (__bridge id)(_color);
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourcePath
{
    return @"MaterialPropertyContentColor";
}

#pragma mark - NOResourceProtocol

+(NSSet *)requiredInitialProperties
{
    return [[super requiredInitialProperties] setByAddingObjectsFromArray:@[@"value"]];
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName session:(NSManagedObject<NOSessionProtocol> *)session
{
    if ([attributeName isEqualToString:@"value"]) {
        
        return NOReadOnlyPermission;
    }
    
    return [super permissionForAttribute:attributeName
                                 session:session];
}

@end
