//
//  Block.m
//  MarioInCity
//
//  Created by Cuong Trinh on 7/27/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Block.h"

@implementation Block
- (instancetype) initWithName:(NSString *)name inScene:(Scene *)scene {
    self = [super initWithName:name
                       ownView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"block.png"]]
                       inScene:scene];
    return self;
}
@end
