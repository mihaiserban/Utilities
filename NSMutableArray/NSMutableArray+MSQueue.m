//
//  NSMutableArray+MSQueue
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "NSMutableArray+MSQueue.h"

@implementation NSMutableArray (MSQueue)

- (id)queueHead
{
    if ([self count] == 0) {
        return nil;
    }
    
    return [self objectAtIndex:0];
}

- (__autoreleasing id)dequeue
{
    if ([self count] == 0) {
        return nil;
    }
    
    id head = [self objectAtIndex:0];
    if (head != nil) {
        // [[head retain] autorelease]; ARC - the __autoreleasing on the return value should so the same thing
        [self removeObjectAtIndex:0];
    }
    
    return head;
}

- (id)pop
{
    return [self dequeue];
}

- (void)enqueue:(id)object
{
    [self addObject:object];
}

@end
