//
//  NSDate+RFC3339.h
//  MixSDKiOS
//
//  Created by Marc Dermejian on 01/04/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (RFC3339)

/*!
 @abstract
 returns an NSDate instance from an NSString input representing a date in RFC3339 format
 
 @param dateString the NSString date value in RFC3339 format to convert to NSDate
 */
+ (NSDate *)dateFromRFC3339String:(NSString *)dateString;

@end
