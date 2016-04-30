//
//  PushedViewController.m
//  OrientationForiOS
//
//  Created by sxc on 4/30/16.
//  Copyright © 2016 Tencent. All rights reserved.
//

#import "PushedViewController.h"

@interface PushedViewController ()

@property (nonatomic) BOOL isAutorotate;

@end

@implementation PushedViewController


- (IBAction)shouldAutorotate:(id)sender {
    self.isAutorotate = YES;
    [UIViewController attemptRotationToDeviceOrientation];
}

#pragma mark - 

//工程中这两个函数不会被调用，因为PushedViewController是通过push形式显示，而非modal。

- (BOOL)shouldAutorotate{
    NSLog(@"%s",__FUNCTION__);
    return self.isAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__FUNCTION__);
    return UIInterfaceOrientationMaskPortrait;
}

@end
