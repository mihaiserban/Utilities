//
//  NSString+MSSecurity.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "NSString+MSSecurity.h"

@implementation NSString (MSSecurity)

-(NSString*)MD5
{
    const char *stringBytes = [self UTF8String];
    unsigned char digestBytes[CC_MD5_DIGEST_LENGTH];
    
    // check failure
    if (!CC_MD5(stringBytes, strlen(stringBytes), digestBytes)) {
        return nil;
    }
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:(CC_MD5_DIGEST_LENGTH * 2)];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; ++i) {
        [digest appendFormat:@"%02x", digestBytes[i]];
    }
    
    return [digest lowercaseString];
}

-(NSString*)SHA1
{
    const char *stringBytes = [self UTF8String];
    unsigned char digestBytes[CC_SHA1_DIGEST_LENGTH];
    
    // check failure
    if (!CC_SHA1(stringBytes, strlen(stringBytes), digestBytes)) {
        return nil;
    }
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:(CC_SHA1_DIGEST_LENGTH * 2)];
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; ++i) {
        [digest appendFormat:@"%02x", digestBytes[i]];
    }
    
    return [digest lowercaseString];
}

@end
