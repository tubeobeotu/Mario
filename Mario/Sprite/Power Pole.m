//
//  Power Pole.m
//  Mario
//
//  Created by nguyenvantu on 7/31/15.
//  Copyright (c) 2015 nguyenvantu. All rights reserved.
//

#import "Power Pole.h"

@implementation Power_Pole
-(void)animate
{
    [self.imgView startAnimating];
}
-(void)animateWithImages:(NSMutableArray *)images
{
    self.imgView.animationImages=images;
    self.imgView.animationDuration=0.5;
    self.imgView.animationRepeatCount=0;
    [self.imgView startAnimating];
}
@end
