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
    
}

- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene
{
    if (self = [super init]) {
        self.name = name;
        self.view = view;
        self.scene = scene;
        
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name
                    inScene:(Scene *)scene
{
    self=[super initWithName:name
                     inScene:scene];

    NSMutableArray* images=[[NSMutableArray alloc]initWithCapacity:3];
    
    [images addObject:[UIImage imageNamed:@"blueLight"]];
    [images addObject:[UIImage imageNamed:@"yellowLight"]];
    [images addObject:[UIImage imageNamed:@"redLight"]];
    UIImageView* imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 128, 128)];
    imgView.animationImages=images;
    imgView.animationDuration=0.5;
    [imgView startAnimating];
    self.view=imgView;
    return self;

}

@end
