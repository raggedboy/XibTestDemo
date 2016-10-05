
//
//  GuideView.m
//  XibTest
//
//  Created by 浩杰 on 16/3/16.
//  Copyright © 2016年 Handsome Pan. All rights reserved.
//

#import "GuideView.h"

@implementation GuideView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) init
{
    if (self = [super init]) {
        [self setFrame:[UIScreen mainScreen].bounds];
        [self setBackgroundColor:[UIColor colorWithRed:0.2 green:1 blue:1 alpha:0.3]];
        [self addTabGesture];
    }
    return self;
}

- (void) addTabGesture
{
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeGuideView:)];
    [self addGestureRecognizer: tapGesture];
}

- (void) removeGuideView: (UITapGestureRecognizer *) tapGes
{
    [self removeFromSuperview];
    if (_testBlock) {
        _testBlock();
    }
    NSLog(@"remove from superView");
}

@end
