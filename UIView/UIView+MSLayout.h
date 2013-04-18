//
//  UIView+MSLayout.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIView (Layout)

@property(assign) CGSize  size;
@property(assign) CGPoint origin;
@property(assign) CGFloat x;
@property(assign) CGFloat y;
@property(assign) CGFloat width;
@property(assign) CGFloat height;

-(void)incrementX:(CGFloat)x;
-(void)decrementX:(CGFloat)x;

-(void)removeAllSubviews;
-(UIView*)viewWithTag:(NSUInteger)tag;
@end
