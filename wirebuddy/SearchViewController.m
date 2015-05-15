//
//  SearchViewController.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "SearchViewController.h"
#import "AppDelegate.h"
#import "TWTSideMenuViewController.h"
#import "UINavigationBar+CustomHeight.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void) viewWillLayoutSubviews{
    [navigationBar setHeight:200.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuToggle:(id)sender {
    [self.sideMenuViewController openMenuAnimated:YES completion:nil];
}


@end
