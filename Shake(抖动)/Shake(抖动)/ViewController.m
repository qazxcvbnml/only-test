//
//  ViewController.m
//  Shake(抖动)
//
//  Created by 刘海清 on 2016/11/11.
//  Copyright © 2016年 liuhaiqing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *shakeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *shakeView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    shakeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:shakeView];
    self.shakeView = shakeView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // 2.抖动
    CAKeyframeAnimation *shakeAnim = [CAKeyframeAnimation animation];
    shakeAnim.keyPath = @"transform.translation.x";
    shakeAnim.duration = 0.15;
    CGFloat delta = 10;
    shakeAnim.values = @[@0, @(-delta), @(delta), @0];
    shakeAnim.repeatCount = 2;
    [self.shakeView.layer addAnimation:shakeAnim forKey:nil];

}

@end
