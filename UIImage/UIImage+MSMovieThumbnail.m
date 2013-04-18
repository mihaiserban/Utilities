//
//  UIImage+MSMovieThumbnail.m
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import "UIImage+MSMovieThumbnail.h"
#import <CoreMedia/CMTime.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@implementation UIImage (MSMovieThumbnail)

+ (UIImage *)thumbnailFromVideoAtURL:(NSURL *)contentURL {
    UIImage *theImage = nil;
    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:contentURL options:nil];
    AVAssetImageGenerator *generator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    generator.appliesPreferredTrackTransform = YES;
    NSError *err = NULL;
    CMTime time = CMTimeMake(1, 60);
    CGImageRef imgRef = [generator copyCGImageAtTime:time actualTime:NULL error:&err];
    
    theImage = [[UIImage alloc] initWithCGImage:imgRef];
    
    CGImageRelease(imgRef);
    
    return theImage;
}

+ (UIImage *)imageFromMovie:(NSURL *)movieURL atTime:(NSTimeInterval)time {
    // set up the movie player
    MPMoviePlayerController *mp = [[MPMoviePlayerController alloc]
                                   initWithContentURL:movieURL];
    mp.shouldAutoplay = NO;
    mp.initialPlaybackTime = time;
    mp.currentPlaybackTime = time;
    // get the thumbnail
    UIImage *thumbnail = [mp thumbnailImageAtTime:time
                                       timeOption:MPMovieTimeOptionNearestKeyFrame];
    // clean up the movie player
    [mp stop];
    return(thumbnail);
}

@end
