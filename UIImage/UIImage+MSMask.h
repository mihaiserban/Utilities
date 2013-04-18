//
//  UIImage+MSMask.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/19/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIImage (MSMask)
+ (UIImage *)ipMaskedImageNamed:(NSString *)name color:(UIColor *)color;
@end
