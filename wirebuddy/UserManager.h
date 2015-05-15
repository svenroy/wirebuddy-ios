//
//  UserManager.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserManager : NSObject

+ (UserManager *)instance;

//add callback block
-(void) registerWithEmail:(NSString *) e
                 password:(NSString *) p
                 complete:(void (^)(BOOL)) finished;

//add callback block
-(void) loginWithEmail:(NSString *)e
              password:(NSString *)p
              complete:(void (^)(BOOL)) finished;

-(void) logOut;

@end
