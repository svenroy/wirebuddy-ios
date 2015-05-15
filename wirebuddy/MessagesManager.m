//
//  MessagesManager.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "MessagesManager.h"

@implementation MessagesManager

+ (MessagesManager *)instance
{
    static MessagesManager *instance;
    
    @synchronized(self)
    {
        if (!instance)
            instance = [[MessagesManager alloc] init];
        
        return instance;
    }
}

@end
