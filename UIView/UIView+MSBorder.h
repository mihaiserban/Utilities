//
//  UIView+MSBorder.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <UIKit/UIKit.h>

@interface UIView (MSBorder)

typedef enum BorderEdgeType
{
    BorderEdgeTopType = 0,
    BorderEdgeBottomType,
    BorderEdgeLeftType,
    BorderEdgeRightType
} BorderEdgeType;

-(void)addBorderOnEdge:(BorderEdgeType)edge borderWidth:(int)width borderColor:(UIColor*)color;
-(void)removeAllBorderViews;

@end
