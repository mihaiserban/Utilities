//
//  UIViewController+MSSkipBackupAttribute.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "UIViewController+MSSkipBackupAttribute.h"
#import <sys/xattr.h>

@implementation UIViewController (MSSkipBackupAttribute)

- (void)addSkipBackupAttributeToItemAtPath:(NSString *)path {
    const char *filePath = [path fileSystemRepresentation];
    const char *attrName = "com.apple.MobileBackup";
    u_int8_t attrValue = 1;
    
    int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
    if (result == 0) {
        NSLog(@"Successfully added skip backup attribute to item %@", path);
    }
}

@end
