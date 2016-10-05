
//
//  MyView.m
//  XibTest
//
//  Created by 浩杰 on 16/3/23.
//  Copyright © 2016年 Handsome Pan. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib
{
    NSLog(@" awake");
    UIView *hahaView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 120, 120)];
    [hahaView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:1 alpha:0.5]];
    [self addSubview:hahaView];
}

@end
