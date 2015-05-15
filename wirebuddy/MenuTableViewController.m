//
//  MenuTableViewController.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "MenuTableViewController.h"
#import "TWTSideMenuViewController.h"
#import "SearchViewController.h"
#import "RequestViewController.h"


@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    storyboardIDs = @[@"Search", @"Request"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *storyboardID = storyboardIDs[indexPath.row - 1];
    
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:storyboardID];
    [self.sideMenuViewController setMainViewController:vc animated:YES closeMenu:YES];
}

@end
