//
//  NSDecimalNumber+NullCheck.m
//  MixSDKiOS
//
//  Created by Marc Dermejian on 13/04/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#import "NSDecimalNumber+NullReplacement.h"

@implementation NSDecimalNumber (NullReplacement)

+ (NSDecimalNumber *)decimalNumberWithStringCheckingForNullValue:(NSString *)numberValue
{
    if ([numberValue isKindOfClass:[NSNull class]]) {
        return [NSDecimalNumber zero];
    }
    if ([numberValue containsString:@"null"]) {
        return [NSDecimalNumber zero];
    }
    return [NSDecimalNumber decimalNumberWithString:numberValue];
}

@end
