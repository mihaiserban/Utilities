//
//  UIPopoverController+MSRemoveInnerShadow.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/19/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIPopoverController (MSRemoveInnerShadow)

- (void)removeInnerShadow;
- (void)presentPopoverWithoutInnerShadowFromRect:(CGRect)rect
                                          inView:(UIView *)view
                        permittedArrowDirections:(UIPopoverArrowDirection)direction
                                        animated:(BOOL)animated;

- (void)presentPopoverWithoutInnerShadowFromBarButtonItem:(UIBarButtonItem *)item
                                 permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections
                                                 animated:(BOOL)animated;

@end
