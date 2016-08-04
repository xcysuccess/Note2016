//
//  ViewController.m
//  XXOCUseSwift
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

#import "ViewController.h"
#import "XXOCUseSwift-Swift.h"

@interface ViewController ()
{
    UITextField *textfield;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XXSwiftViewController *swiftVC = [[XXSwiftViewController alloc] init];
    [swiftVC printOSMOView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
