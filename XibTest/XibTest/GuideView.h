//
//  GuideView.h
//  XibTest
//
//  Created by 浩杰 on 16/3/16.
//  Copyright © 2016年 Handsome Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuideView : UIView

typedef void (^TestBlock)();
@property (nonatomic,strong) TestBlock testBlock;

@end
