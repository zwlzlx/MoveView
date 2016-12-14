//
//  MoveView.m
//  MoveView
//
//  Created by Apple on 16/12/14.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "MoveView.h"

@implementation MoveView
{
    CGFloat XDistance;
    CGFloat YDistance;
    CGPoint Initlocation;

}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self addMoveAction];
    }
    return self;
}
- (void)addMoveAction
{
    UILongPressGestureRecognizer * longpress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(active:)];
    longpress.minimumPressDuration=0.5;
    [self addGestureRecognizer:longpress];
}
- (void)active:(UILongPressGestureRecognizer *)LongPress
{
    if(self.superview)
    {
        CGPoint location = [LongPress locationInView:self.superview];
        if (LongPress.state==UIGestureRecognizerStateBegan)
        {
            Initlocation=[LongPress locationInView:self.superview];
            XDistance=Initlocation.x-LongPress.view.center.x;
            YDistance=Initlocation.y-LongPress.view.center.y;
            [UIView animateWithDuration:0.2 animations:^{
                
                LongPress.view.transform=CGAffineTransformMakeScale(1.2, 1.2);
                LongPress.view.layer.shadowOpacity=1;
                LongPress.view.layer.shadowRadius=3;
                LongPress.view.layer.shadowOffset=CGSizeMake(0, 2);
                
            }completion:^(BOOL finished) {
                
            }];

        }else if (LongPress.state==UIGestureRecognizerStateChanged)
        {
            CGPoint m = CGPointMake(location.x-XDistance,location.y-YDistance);
            LongPress.view.center=CGPointMake(m.x,m.y);
        }
        else if (LongPress.state==UIGestureRecognizerStateEnded)
        {
            [UIView animateWithDuration:0.2 animations:^{
                
                LongPress.view.transform=CGAffineTransformIdentity;
                LongPress.view.layer.shadowOpacity=0;
                
            }];
        }
        

        
    }

}

@end
