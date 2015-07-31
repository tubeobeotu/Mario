//
//  FireBall.h
//  MarioInCity
//
//  Created by Cuong Trinh on 7/30/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Sprite.h"

@interface FireBall : Sprite
@property (nonatomic, assign) BOOL isFlying;

@property (nonatomic, assign) CGFloat speed;
@property (nonatomic, weak) Sprite* fromSprite;

-(void) startFly: (CGFloat) speed;
@end
