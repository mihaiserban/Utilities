//
//  NSString+MSAdditions
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//
#import <Foundation/Foundation.h>

@interface NSString (MSAdditions)

- (BOOL)containsString:(NSString *)subString;
- (NSString*)substringFrom:(NSInteger)a to:(NSInteger)b;
- (NSInteger)indexOf:(NSString*)substring from:(NSInteger)starts;
- (BOOL)startsWith:(NSString*)s;

@end
