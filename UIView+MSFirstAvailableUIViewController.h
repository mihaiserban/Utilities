//
//  UIView+MSFirstAvailableUIViewController
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIView (MSFirstAvailableUIViewController)

- (UIViewController *) firstAvailableUIViewController;
- (id) traverseResponderChainForUIViewController;

@end
