//
//  ViewController.m
//  OrientationForiOS
//
//  Created by sxc on 4/30/16.
//  Copyright © 2016 Tencent. All rights reserved.
//

#import "ViewController.h"
#import "PresentedViewcontroller.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__FUNCTION__);
    return UIInterfaceOrientationMaskAll;
}

#pragma mark - action

- (IBAction)present:(id)sender {
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    PresentedViewcontroller *presentedVC = [mainStoryBoard instantiateViewControllerWithIdentifier:@"PresentedViewcontroller"];
    presentedVC.isPresented = YES;
    [self presentViewController:presentedVC animated:YES completion:nil];
}
@end
