//
//  NSString+MSAdditions.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "NSString+MSAdditions.h"

@implementation NSString (MSAdditions)

- (BOOL)containsString:(NSString *)subString {
    BOOL containsString = NO;
    
    NSRange range = [self rangeOfString:subString];
    if (range.location != NSNotFound) {
        containsString = YES;
    }
    
    return containsString;
}

@end
