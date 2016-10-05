//
//  UITextViewNoPaste.m
//  XibTest
//
//  Created by 浩杰 on 16/4/18.
//  Copyright © 2016年 Handsome Pan. All rights reserved.
//

#import "UITextViewNoPaste.h"

@implementation UITextViewNoPaste

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (BOOL) canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(paste:)) {
        return NO ;
    }
    return YES;
}

@end
