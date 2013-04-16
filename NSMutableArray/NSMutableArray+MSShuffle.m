//
//  NSMutableArray+MSShuffle.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//


#import "NSMutableArray+MSShuffle.h"

@implementation NSMutableArray (MSShuffle)

-(void)shuffle
{
    const NSUInteger count = [self count];
    
    //random swap
    for (NSUInteger i = 0; i < count; ++i) {
        const NSUInteger beyond = count - i;
        const NSUInteger n = i + arc4random() % beyond;
        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

@end
