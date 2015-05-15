//
//  AppDelegate.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    self.menuViewController = [board instantiateViewControllerWithIdentifier:@"Menu"];
    self.mainViewController = [board instantiateViewControllerWithIdentifier:@"Search"];
    
    // create a new side menu
    self.sideMenuViewController = [[TWTSideMenuViewController alloc] initWithMenuViewController:self.menuViewController mainViewController:self.mainViewController];
    
    // specify the shadow color to use behind the main view controller when it is scaled down.
    self.sideMenuViewController.shadowColor = [UIColor blackColor];
    
    // specify a UIOffset to offset the open position of the menu
    self.sideMenuViewController.edgeOffset= UIOffsetMake(18.0f, 0.0f);
    
    // specify a scale to zoom the interface — the scale is 0.0 (scaled to 0% of it's size) to 1.0 (not scaled at all). The example here specifies that it zooms so that the main view is 56.34% of it's size in open mode.
    self.sideMenuViewController.zoomScale = 0.5634f;
    
    // set the side menu controller as the root view controller
    //self.window.rootViewController = self.sideMenuViewController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
