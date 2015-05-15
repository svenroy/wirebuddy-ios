//
//  UserManager.m
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "UserManager.h"
#import "AFNetworking.h"

@implementation UserManager

+ (UserManager *)instance
{
    static UserManager *instance;
    
    @synchronized(self)
    {
        if (!instance)
            instance = [[UserManager alloc] init];
        
        return instance;
    }
}

-(void) loginWithEmail:(NSString *)e
              password:(NSString *)p
              complete:(void (^)(BOOL)) finished{
    
    NSString *url = [NSString stringWithFormat:@"http://wirebuddy-sevii.rhcloud.com/api/users/singlebyemailpword/%@/%@", e, p];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSDictionary *json = (NSDictionary *) responseObject;
             if ([json objectForKey:@"id"]) {
                 finished(YES);
             }
             else{
                 finished(NO);
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             finished(NO);
         }];
}

-(void) registerWithEmail:(NSString *) e
                 password:(NSString *) p
                 complete:(void (^)(BOOL)) finished{
    
    NSString *url = @"http://wirebuddy-sevii.rhcloud.com/api/users/create";
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSDictionary *params = @{
                             @"email":e,
                             @"password":p
                             };
    
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if([responseObject isKindOfClass:[NSDictionary class]]){
            NSDictionary *dict = (NSDictionary *)responseObject;
            NSLog(@"%@", dict);
            finished(YES);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        finished(NO);
        NSLog(@"[HTTPClient Error]: %@", error.localizedDescription);
    }];
}

@end
