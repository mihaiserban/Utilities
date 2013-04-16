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

- (NSString*)substringFrom:(NSInteger)a to:(NSInteger)b {
	NSRange r;
	r.location = a;
	r.length = b - a;
	return [self substringWithRange:r];
}

- (NSInteger)indexOf:(NSString*)substring from:(NSInteger)starts {
	NSRange r;
	r.location = starts;
	r.length = [self length] - r.location;
    
	NSRange index = [self rangeOfString:substring options:NSLiteralSearch range:r];
	if (index.location == NSNotFound) {
		return -1;
	}
	return index.location + index.length;
}

- (BOOL)startsWith:(NSString*)s {
	if([self length] < [s length]) return NO;
	return [s isEqualToString:[self substringFrom:0 to:[s length]]];
}

@end
