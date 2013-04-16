//
//  NSFileManager+MSPaths.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "NSFileManager+MSPaths.h"

@implementation NSFileManager (MSPaths)

-(NSString*)pathForUserDocuments
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

-(NSString*)pathForUserDocumentFile:(NSString*)file
{
    return [[self pathForUserDocuments] stringByAppendingPathComponent:file];
}

-(NSString*)pathForUserCaches
{
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

-(NSString*)pathForUserCacheFile:(NSString*)file
{
    return [[self pathForUserCaches] stringByAppendingPathComponent:file];
}

@end
