//
//  ViewController.m
//  TextFiledexample
//
//  Created by test on 4/1/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *userName;
     NSString *password;
}
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

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

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"Inside textFieldShouldBeginEditing method");
    
    return YES;
    //return NO;

}        // return NO to disallow editing.
- (void)textFieldDidBeginEditing:(UITextField *)textField           // became first responder


{
    NSLog(@"Inside textFieldDidBeginEditing method..");
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField          // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end

{
    NSLog(@"Inside textFieldShouldEndEditing method..");
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
          // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    NSLog(@"Inside textFieldDidEndEditing method...");
    
    userName = _userNameTextField.text;
    password = _passwordTextField.text;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{// called when clear button pressed. return NO to ignore (no notifications)

    NSLog(@"Inside textFieldShouldClear method");
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{              // called when 'return' key pressed. return NO to ignore.
    NSLog(@"Inside textFieldShouldReturn method..");
    [_userNameTextField resignFirstResponder];
    //return YES;
    return NO;
}
@end
