//
//  UIView+MSLayout.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "UIView+MSLayout.h"

@implementation UIView (Layout)

//origin
-(void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(CGPoint)origin
{
    return self.frame.origin;
}

//size
-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGSize)size
{
    return self.frame.size;
}

//x
-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat)x
{
    return self.frame.origin.x;
}

//y
-(void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat)y
{
    return self.frame.origin.y;
}

//width
-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat)width
{
    return self.frame.size.width;
}

//height
-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(CGFloat)height
{
    return self.frame.size.height;
}

-(void)incrementX:(CGFloat)x
{
    CGRect f = [self frame];
    f.origin.x += x;
    [self setFrame:f];
}

-(void)decrementX:(CGFloat)x
{
    CGRect f = [self frame];
    f.origin.x -= x;
    [self setFrame:f];
}

-(void)removeAllSubviews
{
    [self.subviews makeObjectsPerformSelector: @selector(removeFromSuperview)];
}

-(UIView*)viewWithTag:(NSUInteger)tag
{
    for (UIView *view in self.subviews) {
        if (view.tag == tag) {
            return view;
        }
    }
    return nil;
}

@end
