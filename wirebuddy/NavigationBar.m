//
//  NavigationBar.m
//  wirebuddy
//
//  Created by Royston Yinkore on 30/01/2015.
//  Copyright (c) 2015 sevii. All rights reserved.
//

#import "NavigationBar.h"

@implementation NavigationBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height + 50);
        
        [[UINavigationBar appearance] setBackgroundColor:[self colorWithHexString:@"#321e5b"]];
        [[UINavigationBar appearance] setBarTintColor:[self colorWithHexString:@"#321e5b"]];
        [[UINavigationBar appearance] setTintColor:[self colorWithHexString:@"#ff45a3"]];
        
    }
    return self;
}

- (UIColor*)colorWithHexString:(NSString*)hexadecimal {
    
    // convert Objective-C NSString to C string
    const char *cString = [hexadecimal cStringUsingEncoding: NSASCIIStringEncoding];
    
    // Strip optional #
    if (cString[0] == '#') cString++;
    
    // Validate is hex string
    for (const char *charPtr = cString; *charPtr != 0; charPtr++)
    {
        char ch = *charPtr;
        BOOL isHexDigit = (ch >= '0' && ch <= '9') || (ch >= 'a' && ch <= 'f') || (ch >= 'A' && ch <= 'F');
        if ( !isHexDigit ) return nil;
        if ( charPtr - cString > 8 ) return nil; // aaRRGGBB is largest string we accept.
    }
    
    // Make canonical hex string
    char canonicalARGB[8 + 1];  // null terminated
    canonicalARGB[8] = 0;
    switch (strlen(cString))
    {
        case 3:
            canonicalARGB[0] = canonicalARGB[1] = 'F'; // Alpha
            for (int i = 0; i < 6; i++)
            {
                canonicalARGB[i + 2] = cString[i / 2];
            }
            break;
        case 4:
            for (int i = 0; i < 8; i++)
            {
                canonicalARGB[i] = cString[i / 2];
            }
            break;
        case 6:
            canonicalARGB[0] = canonicalARGB[1] = 'F'; // Alpha
            strcpy(canonicalARGB + 2, cString);
            break;
        case 8:
            strcpy(canonicalARGB, cString);
            break;
        default:
            return nil;
    }
    
    long long int hex = strtoll(canonicalARGB, NULL , 16 );
    
    CGFloat alpha = (CGFloat)((hex & 0xFF000000) >> 24) / 255.f;
    CGFloat red = (CGFloat)((hex & 0x00FF0000) >> 16) / 255.f;
    CGFloat green = (CGFloat)((hex & 0x0000FF00) >> 8) / 255.f;
    CGFloat blue = (CGFloat)((hex & 0x000000FF) >> 0) / 255.f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
