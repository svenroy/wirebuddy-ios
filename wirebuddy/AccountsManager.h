//
//  AccountsManager.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface AccountsManager : NSObject

+ (AccountsManager *)instance;

-(void) createAccount:(Account *)a;

@end
