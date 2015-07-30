//
//  Sprite.h
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Scene.h"
@class  Scene;
@interface Sprite : NSObject
@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, weak) Scene *scene;

- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene;
- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene
                    listImage:(UIImageView*)images;
- (void) animate;
- (void) animateWithImages:(NSMutableArray*)images;

@end
