//
//  Sprite.m
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Sprite.h"

@implementation Sprite
- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene {
    if (self = [super init]) {
        self.name = name;
        self.view = view;
        self.scene = scene;
        
    }
    return self;
}
- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene
                    listImage:(UIImageView*)images
{
    if (self = [super init]) {
        self.name = name;
        self.view = view;
        self.scene = scene;
        self.imgView=images;
        
    }
    return self;
}

- (void) animate {
    //Do nothing here. All custome sprite need to override this method
}
- (void) animateWithImages:(NSMutableArray*)images
{
    
}
@end
