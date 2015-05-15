//
//  AppDelegate.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWTSideMenuViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *menuViewController;
@property (strong, nonatomic) UIViewController *mainViewController;
@property (strong, nonatomic) TWTSideMenuViewController *sideMenuViewController;


@end

