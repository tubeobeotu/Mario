//
//  MainSceneBall.m
//  Mario
//
//  Created by nguyenvantu on 7/30/15.
//  Copyright (c) 2015 nguyenvantu. All rights reserved.
//

#import "MainSceneBall.h"
#import "Ball.h"
@interface MainSceneBall ()

@end

@implementation MainSceneBall
{
    Ball* ball,*subBall;
    NSTimer* timer,*timer2;
    CGFloat angle;
    CGFloat ballRadius;
    int countBall,countRm;
    BOOL leftToRight,botToTop,first;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    angle=0.0;
    leftToRight=true;
    botToTop=false;
    first=true;
    ballRadius = 32.0;
    countBall=0;
    countRm=0;
    self.view.backgroundColor=[UIColor whiteColor];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    CGFloat statusNavigationBarHeight=[UIApplication sharedApplication].statusBarFrame.size.height + self.navigationController.navigationBar.bounds.size.height;
    self.size=CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height-statusNavigationBarHeight);
    [self addBall];
    timer=[NSTimer scheduledTimerWithTimeInterval:0.02
                                           target:self
                                         selector:@selector(moveBall)
                                         userInfo:nil
                                           repeats:true];
    timer2=[NSTimer scheduledTimerWithTimeInterval:0.03
                                            target:self
                                          selector:@selector(rmBall)
                                          userInfo:nil
                                           repeats:true];
    
    
    
}
-(void)addBall
{
    UIImage* imgBall=[UIImage imageNamed:@"ballRoll"];
    ball=[[Ball alloc]initWithName:@"ball"
                           ownView:[[UIImageView alloc]initWithImage:imgBall]
                           inScene:self];
    [self addSprite:ball];
    
}
-(void)rmBall
{
    [self removeSpriteByName:[NSString stringWithFormat:@"ball%d",countRm]];
    
    countRm++;
}
-(void)moveBall
{
    CGFloat deltaAngle=0.1;
    CGFloat y;
    
    angle +=deltaAngle;
    if (first) {
        
        y=ball.view.center.y;
        if (ball.view.center.x>=self.view.bounds.size.width-ballRadius)
        {
            leftToRight=false;
            first=false;
        }
        else if (ball.view.center.x<=ballRadius)
        {
            leftToRight=true;
        }
        
    }
    else
    {
        
        
        if (ball.view.center.x>=self.view.bounds.size.width-ballRadius)
        {
            leftToRight=false;
        }
        else if (ball.view.center.x<=ballRadius)
        {
            leftToRight=true;
        }
        
        if (ball.view.center.y>=self.view.bounds.size.height-ballRadius) {
            botToTop=true;
        }
        else if(ball.view.center.y<=ballRadius)
        {
            botToTop=false;
        }
        if (!botToTop) {
            y=ball.view.center.y+ballRadius*cos(30);
        }
        else
        {
            y=ball.view.center.y-ballRadius*cos(30);
        }
    }
    
    NSLog(@"%f",ball.view.center.y);
    NSLog(botToTop?@"Yes":@"No");
    UIImage* imgBall=[UIImage imageNamed:@"ballRoll"];
    subBall=[[Ball alloc]initWithName:[NSString stringWithFormat:@"ball%d",countBall]
                           ownView:[[UIImageView alloc]initWithImage:imgBall]
                           inScene:self];
    
    subBall.view.center=CGPointMake(ball.view.center.x+1-ballRadius*deltaAngle,y);
    subBall.view.alpha=0.1;
    
    [self addSprite:subBall];
    
    
    countBall++;
    if (!leftToRight) {
        ball.view.transform=CGAffineTransformMakeRotation(-angle);
        
        ball.view.center=CGPointMake(ball.view.center.x-ballRadius*deltaAngle,y);
    }
    else
    {
        ball.view.transform=CGAffineTransformMakeRotation(angle);
        
        ball.view.center=CGPointMake(ball.view.center.x+ballRadius*deltaAngle,y);
    }
    

}
-(void)viewWillDisappear:(BOOL)animated
{
    [timer invalidate];
    [timer2 invalidate];
}


@end
