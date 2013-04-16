//
//  NSString+MSSecurity.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (MSSecurity)

-(NSString*)MD5;
-(NSString*)SHA1;

@end
