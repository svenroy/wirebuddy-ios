//
//  AccountsManager.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "AccountsManager.h"

@implementation AccountsManager

+ (AccountsManager *)instance
{
    static AccountsManager *instance;
    
    @synchronized(self)
    {
        if (!instance)
            instance = [[AccountsManager alloc] init];
        
        return instance;
    }
}

@end
