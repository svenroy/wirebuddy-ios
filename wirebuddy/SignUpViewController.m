//
//  SignUpViewController.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "SignUpViewController.h"
#import "UserManager.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)btnSignUp:(id)sender {
    
    if(txtEmail.text.length <= 0
       || txtPassword.text.length <= 0
       || txtConfirmPassword.text.length <= 0){
        return;
    }
    
    if(![txtPassword.text isEqualToString:txtConfirmPassword.text]){
        return;
    }
    
    [[UserManager instance] registerWithEmail:txtEmail.text
                                     password:txtPassword.text
                                     complete:^(BOOL finished){
                                         
                                         if(finished){
                                             //TODO: go to sign
                                         }
                                         else{
                                             //TODO: alert user of error
                                         }
    }];
    
}

@end
