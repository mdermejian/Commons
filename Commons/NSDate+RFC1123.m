//
//  NSDate+RFC1123.m
//  BlytheCon
//
//  Created by Neil Edwards on 02/09/2010.
//  Copyright 2010 buffer. All rights reserved.
//

#import "NSDate+RFC1123.h"
#import "NSDateFormatter+Singleton.h"

@implementation NSDate (RFC1123)

+(NSDate*)dateFromRFC1123:(NSString*)value_
{
    if(!value_){
        return nil;
    }

    NSDateFormatter *dateFormatter;
    
    dateFormatter = [NSDateFormatter RFC1123DateFormatter];
    NSDate *ret = [dateFormatter dateFromString:value_];
    if(ret){
        return ret;
    }
	
    dateFormatter = [NSDateFormatter RFC850DateFormatter];;
    ret = [dateFormatter dateFromString:value_];
    if(ret) {
        return ret;
    }
    
    dateFormatter = [NSDateFormatter ASCDateFormatter];
    return [dateFormatter dateFromString:value_];
}

-(NSString*)rfc1123String
{
    return [[NSDateFormatter RFC1123FullDateOutputFormatter] stringFromDate:self];
}

-(NSString*)timeFromRFC1123String
{
    return [[NSDateFormatter RFC1123TimeOutputFormatter] stringFromDate:self];
}

@end