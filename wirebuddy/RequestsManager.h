//
//  RequestsManager.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestSearch.h"

@interface RequestsManager : NSObject


-(NSMutableArray *) requestSearch:(RequestSearch *) r;

@end
