//
//  NSArray+MSOccurances.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "NSArray+MSOccurances.h"

@implementation NSArray (MSOccurances)

-(NSUInteger)occurrencesOfObject:(id)object
{
    NSUInteger count = 0;
    for (id element in self) {
        if ([element isEqual:object]) {
            ++count;
        }
    }
    return count;
}

@end
