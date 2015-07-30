//
//  Ball.m
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 nguyenvantu. All rights reserved.
//

#import "Ball.h"

@implementation Ball
-(void)animate
{
    self.view.center=CGPointMake(self.view.center.x+self.distancex, self.view.center.y+self.distancey);
}
@end
