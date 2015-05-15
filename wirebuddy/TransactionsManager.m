//
//  RequestsManager.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "TransactionsManager.h"

@implementation TransactionsManager

+ (TransactionsManager *)instance
{
    static TransactionsManager *instance;
    
    @synchronized(self)
    {
        if (!instance)
            instance = [[TransactionsManager alloc] init];
        
        return instance;
    }
}

@end
