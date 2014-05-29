//
//  NSGNode.m
//  NetworkSceneGraph
//
//  Created by Alsey Coleman Miller on 5/28/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "NSGNode.h"
#import "NSGGeometry.h"
#import "NSGLight.h"
#import "NSGLink.h"
#import "NSGNode.h"
#import "NSGScene.h"
#import "NSGCamera.h"
#import "NSString+SCNVector3.h"
#import "NSString+SCNVector4.h"

static void *KVOContext = &KVOContext;

@implementation NSGNode

@dynamic hidden;
@dynamic opacity;
@dynamic position;
@dynamic resourceID;
@dynamic rotation;
@dynamic scale;
@dynamic childNodes;
@dynamic geometry;
@dynamic light;
@dynamic link;
@dynamic parentNode;
@dynamic scene;
@dynamic camera;
@dynamic descriptionText;

@synthesize node = _node;

-(void)dealloc
{
    if (self.node) {
        
        [self removeObserver:self
                  forKeyPath:@"hidden"];
        
        [self removeObserver:self
                  forKeyPath:@"opacity"];
        
        [self removeObserver:self
                  forKeyPath:@"position"];
        
        [self removeObserver:self
                  forKeyPath:@"resourceID"];
        
        [self removeObserver:self
                  forKeyPath:@"rotation"];
        
        [self removeObserver:self
                  forKeyPath:@"scale"];
        
        [self removeObserver:self
                  forKeyPath:@"childNodes"];
        
        [self removeObserver:self
                  forKeyPath:@"geometry"];
        
        [self removeObserver:self
                  forKeyPath:@"light"];
        
        [self removeObserver:self
                  forKeyPath:@"camera"];
    }
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"hidden"]) {
            
            self.node.hidden = self.hidden.boolValue;
            
        }
        
        if ([keyPath isEqualToString:@"opacity"]) {
            
            self.node.opacity = self.opacity.floatValue;
            
        }
        
        if ([keyPath isEqualToString:@"position"]) {
            
            self.node.position = self.position.SCNVector3Value;
            
        }
        
        if ([keyPath isEqualToString:@"resourceID"]) {
            
            self.node.name = [NSString stringWithFormat:@"%@", self.resourceID];
            
        }
        
        if ([keyPath isEqualToString:@"rotation"]) {
            
            self.node.rotation = self.rotation.SCNVector4Value;
            
        }
        
        if ([keyPath isEqualToString:@"scale"]) {
            
            self.node.scale = self.scale.SCNVector3Value;
            
        }
        
        if ([keyPath isEqualToString:@"childNodes"]) {
            
            // remove nodes that dont match
            
            for (SCNNode *sceneNode in self.node.childNodes) {
                
                BOOL nodeExists = NO;
                
                for (NSGNode *node in self.childNodes) {
                    
                    if ([[NSString stringWithFormat:@"%@", node.resourceID] isEqualToString:sceneNode.name]) {
                        
                        nodeExists = YES;
                        
                        break;
                    }
                }
                
                if (!nodeExists) {
                    
                    [sceneNode removeFromParentNode];
                }
            }
            
            // add new nodes
            
            for (NSGNode *node in self.childNodes) {
                
                BOOL nodeExists = NO;
                
                for (SCNNode *sceneNode in self.node.childNodes) {
                    
                    if ([[NSString stringWithFormat:@"%@", node.resourceID] isEqualToString:sceneNode.name]) {
                        
                        nodeExists = YES;
                        
                        break;
                    }
                }
                
                if (!nodeExists) {
                    
                    [self.node addChildNode:node.node];
                }
            }
                        
        }
        
        if ([keyPath isEqualToString:@"geometry"]) {
            
            self.node.geometry = self.geometry.geometry;
            
        }
        
        if ([keyPath isEqualToString:@"light"]) {
            
            self.node.light = self.light.light;
            
        }
        
        if ([keyPath isEqualToString:@"camera"]) {
            
            self.node.camera = self.camera.camera;
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Transient Properties

-(SCNNode *)node
{
    if (!_node) {
        
        // KVO
        
        [self addObserver:self
               forKeyPath:@"hidden"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"opacity"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"position"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"resourceID"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"rotation"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"scale"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"childNodes"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"geometry"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"light"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        [self addObserver:self
               forKeyPath:@"camera"
                  options:NSKeyValueObservingOptionNew
                  context:KVOContext];
        
        
        // setup node...
        
        self.node.hidden = self.hidden.boolValue;
        
        self.node.opacity = self.opacity.floatValue;
        
        self.node.position = self.position.SCNVector3Value;
        
        self.node.name = [NSString stringWithFormat:@"%@", self.resourceID];
        
        self.node.rotation = self.rotation.SCNVector4Value;
        
        self.node.scale = self.scale.SCNVector3Value;

        self.node.geometry = self.geometry.geometry;
        
        self.node.light = self.light.light;
        
        self.node.camera = self.camera.camera;
        
        // add node children
        
        for (NSGNode *childNode in self.childNodes) {
            
            [_node addChildNode:childNode.node];
        }
        
    }
    
    return _node;
}

#pragma mark - NOResourceKeysProtocol

+(NSString *)resourceIDKey
{
    return @"resourceID";
}

+(NSString *)resourcePath
{
    return @"node";
}

#pragma mark - NOResourceProtocol

+(BOOL)requireSession
{
    return NO;
}

+(NSSet *)requiredInitialProperties
{
    return nil;
}

+(BOOL)canSearchFromSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

+(BOOL)canCreateNewInstanceFromSession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return YES;
}

-(BOOL)canDeleteFromSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

-(NOResourcePermission)permissionForSession:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(NOResourcePermission)permissionForAttribute:(NSString *)attributeName
                                      session:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(NOResourcePermission)permissionForRelationship:(NSString *)relationshipName
                                         session:(NSManagedObject<NOSessionProtocol> *)session
{
    return NOEditPermission;
}

-(BOOL)canPerformFunction:(NSString *)functionName
                  session:(NSManagedObject<NOSessionProtocol> *)session
{
    return YES;
}

-(void)wasCreatedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)attribute:(NSString *)attributeName
wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session;
{
    return;
}

-(void)attribute:(NSString *)attributeName
wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)relationship:(NSString *)relationshipName
wasAccessedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

-(void)relationship:(NSString *)relationshipName
 wasEditedBySession:(NSManagedObject<NOSessionProtocol> *)session
{
    return;
}

+(NSSet *)resourceFunctions
{
    return nil;
}

-(NOResourceFunctionCode)performFunction:(NSString *)functionName
                             withSession:(NSManagedObject<NOSessionProtocol> *)session
                      recievedJsonObject:(NSDictionary *)recievedJsonObject
                                response:(NSDictionary **)jsonObjectResponse
{
    return NOFunctionPerformedSuccesfully;
}

@end
