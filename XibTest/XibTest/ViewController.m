//
//  ViewController.m
//  XibTest
//
//  Created by 浩杰 on 16/3/15.
//  Copyright © 2016年 Handsome Pan. All rights reserved.
//

#import "ViewController.h"
#import "GuideView.h"
#import "MyView.h"
#include <stdio.h>


@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UITextField *textViewHeight;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _txtView.contentInset = UIEdgeInsetsMake(-8, -4, -8, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBtnClicked
{
    //contentSize
    //contentOffset
    //contentInsects
    //container.
    NSLog(@"inset.top: %f",_txtView.contentInset.top);
    NSLog(@"inset.buttom: %f",_txtView.contentInset.bottom);
    NSLog(@"contentSizeHeight: %f",_txtView.contentSize.height);
    NSLog(@"contentOffsety: %f",_txtView.contentOffset.y);
//    NSLog(@"container: %f",_txtView.textContainer);
    
    
}

- (IBAction)changeHeight
{
        _txtView.frame = CGRectMake(_txtView.frame.origin.x
                                    , _txtView.frame.origin.y, _txtView.frame.size.width, _textViewHeight.text.floatValue);
    
}

- (IBAction)shotsBtnClicked
{
    UIImage *img = [self fullScreenshots];
    
        UIImage *imgClip = [UIImage imageWithCGImage:CGImageCreateWithImageInRect(img.CGImage, CGRectMake(0, 0, 750, 375))];//此处尺寸要考虑scale
//    UIImageWriteToSavedPhotosAlbum([self combineImg:img apendxImg:img], nil, nil, nil);
        UIImageWriteToSavedPhotosAlbum(imgClip, nil, nil, nil);

}

- (UIImage *)fullScreenshots{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIGraphicsBeginImageContextWithOptions(window.frame.size, true, [[UIScreen mainScreen] scale]);
//    UIRectClip(CGRectMake(100, 50, 100, 100));
    [window.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (UIImage *) combineImg: (UIImage *)shotImg apendxImg: (UIImage *)apendxImg
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIGraphicsBeginImageContextWithOptions(window.frame.size, true, [[UIScreen mainScreen] scale]);
    [shotImg drawInRect:CGRectMake(0, -100, window.frame.size.width, window.frame.size.height)];
    [apendxImg drawInRect:CGRectMake(0, window.frame.size.height-100, window.frame.size.width,  window.frame.size.height)];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}



@end
