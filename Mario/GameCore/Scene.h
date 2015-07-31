//
//  Scene.h
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sprite.h"
@class  Sprite;
@interface Scene : UIViewController
@property(nonatomic,strong)NSMutableDictionary *sprites;
@property(nonatomic,assign)CGSize size;
- (void) addSprite: (Sprite*) sprite;

- (void) removeSprite: (Sprite*) sprite;

- (void) removeSpriteByName: (NSString*) spriteName;
-(void)hideSpritaByName:(NSString*) spriteName;
-(void)visibleSpritaByName:(NSString*) spriteName;
@end
