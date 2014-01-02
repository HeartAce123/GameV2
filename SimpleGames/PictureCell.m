//
//  PictureCell.m
//  SimpleGames
//
//  Created by LieuHaiDang on 1/2/14.
//  Copyright (c) 2014 LieuHaiDang. All rights reserved.
//

#import "PictureCell.h"

@implementation PictureCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe)];
        UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe)];
        UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe)];
        UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe)];
        [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
        [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
        [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
        [swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
        [self addGestureRecognizer:swipeLeft];
        [self addGestureRecognizer:swipeRight];
        [self addGestureRecognizer:swipeDown];
        [self addGestureRecognizer:swipeUp];
        self.userInteractionEnabled = YES;
    }
    return self;
}
-(id)initWithIndex:(int)index withImage:(UIImage *)image andX:(int)x andY:(int)y andLevel:(int)lvl
{
    self = [[PictureCell alloc] initWithFrame:CGRectMake(x, y, 300/lvl, 300/lvl)];
    self.image = image;
    [self setBackgroundImage:self.image forState:UIControlStateNormal];
    self.index = index;
    [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    return self;
}
-(void)btnClick:(id)sender
{
    
}
-(void)handleSwipe
{
    
}
-(void)swapPosition
{
    
}
@end
