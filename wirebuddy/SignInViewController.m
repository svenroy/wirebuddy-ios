//
//  SignInViewController.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "SignInViewController.h"
#import "TWTSideMenuViewController.h"
#import "AppDelegate.h"
#import "UserManager.h"
//#import "Reachability.h"

@interface SignInViewController ()



@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnSignIn:(id)sender {
    
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    [self presentViewController:app.sideMenuViewController animated:YES completion:nil];
    
    if(txtEmail.text.length > 0
       && txtPassword.text.length > 0){
        
        /*[[UserManager instance] loginWithEmail:txtEmail.text
                                      password:txtPassword.text
                                      complete:^(BOOL finished){
            if(finished){
                //go to homepage
                AppDelegate *app = [UIApplication sharedApplication].delegate;
                [self presentViewController:app.sideMenuViewController animated:YES completion:nil];
            }
            else{
                //alert user of invalid login
            }
        }];*/
        
    }
}

- (IBAction)btnSignUp:(UIButton *)sender {
    [self performSegueWithIdentifier:@"gotoSignUpSegue" sender:nil];
}


@end
