//
//  UIView+MSBorder.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "UIView+MSBorder.h"

static const int kBorderViewTag = 101;

@implementation UIView (MSBorder)

-(void)addBorderOnEdge:(BorderEdgeType)edge borderWidth:(int)width borderColor:(UIColor*)color
{
    CGSize mainViewSize = self.bounds.size;
    CGFloat borderWidth = width;
    
    CGRect frame = CGRectZero;
    switch (edge) {
        case BorderEdgeBottomType:
        {
            frame = CGRectMake(0, mainViewSize.height-borderWidth, mainViewSize.width, borderWidth);
        }
            break;
        case BorderEdgeTopType:
        {
            frame = CGRectMake(0, 0, mainViewSize.width, borderWidth);
        }
            break;
        case BorderEdgeLeftType:
        {
            frame = CGRectMake(0, 0, borderWidth, mainViewSize.height);
        }
            break;
        case BorderEdgeRightType:
        {
            frame = CGRectMake(mainViewSize.width-borderWidth, 0, borderWidth, mainViewSize.height);
        }
            break;
        default:
            break;
    }
    UIView *leftView = [[UIView alloc] initWithFrame:frame];
    [leftView setTag:kBorderViewTag];
    leftView.opaque = YES;
    
    leftView.backgroundColor = color;
    
    // for bonus points, set the views' autoresizing mask so they'll stay with the edges:
    leftView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin;
    
    [self addSubview:leftView];
    
    [leftView release];
}

-(void)removeAllBorderViews
{
    for (UIView *subview in [self subviews]) {
        if ([subview tag] == kBorderViewTag) {
            [subview removeFromSuperview];
        }
    }
}
@end
