//
//  UIApplication+MSAdditions.h
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "UIApplication+MSAdditions.h"

@implementation UIApplication (MSAdditions)

+(id)appDelegate
{
    return [[UIApplication sharedApplication] delegate];
}

+(BOOL)isIpad
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

@end
