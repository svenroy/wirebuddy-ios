//
//  MessagesManager.h
//  wirebuddy
//
//  Created by Royston Yinkore on 25/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface MessagesManager : NSObject

+ (MessagesManager *)instance;

-(NSMutableArray *) getMessages;
-(int) getUnreadMessages;

-(void) readMessage:(Message *) m;
-(void) deleteMessage:(Message *) m;

@end
