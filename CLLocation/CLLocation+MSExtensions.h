//
//  CLLocation+MSExtensions
//  Utility categories for iOS
//
//  Created by Mihai Serban on 4/16/13.
//  Copyright (c) 2013 http://flavors.me/mihaiserban. All rights reserved.
//  Distribuited under MIT License
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (MSExtensions)

- (double)bearingInRadiansTowardsLocation:(CLLocation *)towardsLocation;
- (CLLocation *)newLocationAtDistance:(CLLocationDistance)atDistance alongBearingInRadians:(double)bearingInRadians;
- (CLLocation *)newLocationAtDistance:(CLLocationDistance)atDistance towardsLocation:(CLLocation *)towardsLocation;

@end
