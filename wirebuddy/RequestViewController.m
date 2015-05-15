//
//  RequestViewController.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "RequestViewController.h"
#import "TWTSideMenuViewController.h"

@interface RequestViewController ()

@end

@implementation RequestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)openMenu:(id)sender {
    [self.sideMenuViewController openMenuAnimated:YES completion:nil];
}

@end
