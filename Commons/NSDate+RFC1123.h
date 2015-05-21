//
//  NSDate+RFC1123.h
//  BlytheCon
//
//  Created by Neil Edwards on 02/09/2010.
//  Copyright 2010 buffer. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (RFC1123)

/*!
 @abstract
 returns an NSDate instance from an NSString input representing a date in RFC1123 format
 
 @param value_ the NSString date value in RFC1123 format to convert to NSDate
 */
+(NSDate*)dateFromRFC1123:(NSString*)value_;


/*!
 @abstract
 Converts NSDate into a RFC1123 'Full-Date' string
 */
-(NSString*)rfc1123String;


/*!
 @abstract
 Converts NSDate into a RFC1123 time in HH':'mm':'ss NSString format
 */
-(NSString*)timeFromRFC1123String;

@end