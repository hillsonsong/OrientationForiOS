//
//  PresentedViewcontroller.m
//  OrientationForiOS
//
//  Created by sxc on 4/30/16.
//  Copyright © 2016 Tencent. All rights reserved.
//

#import "PresentedViewcontroller.h"

@interface PresentedViewcontroller ()

@property (nonatomic) BOOL isAutorotate;

@end

@implementation PresentedViewcontroller

#pragma mark - UIViewControllerRotation

- (BOOL)shouldAutorotate{
    NSLog(@"%s",__FUNCTION__);
    return self.isAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__FUNCTION__);
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    NSLog(@"%s",__FUNCTION__);
    return ([[UIApplication sharedApplication] statusBarOrientation]);
}

#pragma mark - action

- (IBAction)dismiss:(id)sender {
    self.isPresented = NO;
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)autoRotate:(id)sender {
    self.isAutorotate = YES;
    [UIViewController attemptRotationToDeviceOrientation];
}

- (IBAction)noAutoRotate:(id)sender {
    self.isAutorotate = NO;
    [UIViewController attemptRotationToDeviceOrientation];
}

@end
