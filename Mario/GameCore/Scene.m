//
//  Scene.m
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Scene.h"

@interface Scene ()

@end

@implementation Scene

- (void) loadView {
    [super loadView];
    self.sprites = [NSMutableDictionary new];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) addSprite: (Sprite*) sprite {
    [self.sprites setObject: sprite
                     forKey: sprite.name];
    [self.view addSubview: sprite.view];
}

- (void) removeSprite: (Sprite*) sprite {
    [self.sprites removeObjectForKey:sprite.name];
    [sprite.view removeFromSuperview];
}

- (void) removeSpriteByName:(NSString *)spriteName {
    Sprite* removeView = self.sprites[spriteName];
    [removeView.view removeFromSuperview];
    [self.sprites removeObjectForKey:spriteName];
    
}
-(void)hideSpritaByName:(NSString*) spriteName
{
    Sprite* sprite = self.sprites[spriteName];
    sprite.view.hidden=true;
}
-(void)visibleSpritaByName:(NSString*) spriteName
{
    Sprite* sprite = self.sprites[spriteName];
    sprite.view.hidden=false;
}

@end
