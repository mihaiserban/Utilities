//
//  UIViewController+MSSkipBackupAttribute.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIViewController (MSSkipBackupAttribute)

- (void)addSkipBackupAttributeToItemAtPath:(NSString *)path;

@end
