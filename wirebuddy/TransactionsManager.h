//
//  RequestsManager.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestSearch.h"
#import "Request.h"


@interface TransactionsManager : NSObject

+ (TransactionsManager *)instance;

//add callback
-(NSMutableArray *) requestSearch:(RequestSearch *) r;

//add callback
-(void) createRequest:(Request *) r;

-(void) getTransactions;
-(void) getHistory;

//add callback
-(void) acceptRequest:(Request *)r;

@end
