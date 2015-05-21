//
//  NSString+CurrencySymbol.m
//  POS
//
//  Created by Marc Dermejian on 24/11/2014.
//  Copyright (c) 2014 Fexco Software Group. All rights reserved.
//

#import "NSString+CurrencySymbol.h"

@implementation NSString (CurrencySymbol)

+ (NSString*)currencySymbolForCode:(NSString*)currencyCode
{
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:currencyCode];
    if (locale) {
        NSString *currencySymbol = [NSString stringWithFormat:@"%@",[locale displayNameForKey:NSLocaleCurrencySymbol value:currencyCode]];
        return currencySymbol;
    }
    return nil;
}

@end
