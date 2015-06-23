//
//  NSString+CurrencySymbol.h
//  POS
//
//  Created by Marc Dermejian on 24/11/2014.
//  Copyright (c) 2014 Fexco Software Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CurrencySymbol)

/*!
 @abstract
 returns an NSString symbol for an NSString representing an ISO 4217 currency code
 
 @param currencyCode pass an ISO 4217 currency code as an NSString value here

 @discussion
 Takes in an ISO 4217 currency code and returns the symbol for that currency
 */
+ (NSString*)currencySymbolForCode:(NSString*)currencyCode;

/*!
 @abstract
 returns the NSString display name for an NSString representing an ISO 4217 currency code
 
 @param currencyCode pass an ISO 4217 currency code as an NSString value here
 
 @discussion
 Takes in an ISO 4217 currency code and returns the display name for that currency
 ex.: CHF-Swiss Franc
 */
+ (NSString*)currencyLocalizedNameForCode:(NSString*)currencyCode;

@end
