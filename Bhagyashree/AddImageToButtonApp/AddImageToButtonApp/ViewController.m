//
//  ViewController.m
//  AddImageToButtonApp
//
//  Created by test on 3/31/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plusButton:(id)sender {
  _displayLabel.text = @"NR148";
}

- (IBAction)okButton:(id)sender {
     _messageButton.text = @"Bhagyashree";
}
@end
