//
//  NSNumberFormatter+Singleton.m
//  POS
//
//  Created by Marc Dermejian on 10/11/2014.
//  Copyright (c) 2014 Fexco Software Group. All rights reserved.
//

#import "NSNumberFormatter+Singleton.h"

@implementation NSNumberFormatter (Singleton)

+ (instancetype)numberFormatter
{
    static NSNumberFormatter *_numberFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numberFormatter = [[NSNumberFormatter alloc] init];
        [_numberFormatter setLocale:[NSLocale currentLocale]];
        [_numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
        [_numberFormatter setMaximumFractionDigits:2];
        [_numberFormatter setMinimumFractionDigits:2];
        //TODO: check rounding
        //[_numberFormatter setRoundingMode:NSNumberFormatterRoundDown];
    });
    
    return _numberFormatter;
}

@end
