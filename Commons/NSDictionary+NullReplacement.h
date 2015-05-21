//
//  NSDictionary+NullReplacement.h
//  BureauDeChange
//
//  Created by Marc Dermejian on 04/02/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NullReplacement)

/*!
 @abstract
 Recursively replaces or removes null or nil values from an NSDictionary
 
 This is particularly useful when parsing backend responses
 */
- (NSDictionary *)dictionaryByReplacingNullsWithBlanks;

@end
