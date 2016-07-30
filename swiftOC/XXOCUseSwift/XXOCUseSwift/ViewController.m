//
//  ViewController.m
//  XXOCUseSwift
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *textfield;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIColor darkGrayColor];
    textfield.text = @"test";
    [textfield setText:@"test"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
