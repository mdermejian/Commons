//
//  NSDictionary+NullReplacement.m
//  BureauDeChange
//
//  Created by Marc Dermejian on 04/02/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#import "NSDictionary+NullReplacement.h"
#import "NSArray+NullReplacement.h"

@implementation NSDictionary (NullReplacement)

- (NSDictionary *)dictionaryByReplacingNullsWithBlanks {
    const NSMutableDictionary *replaced = [self mutableCopy];
    const id nul = [NSNull null];
    
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if (object == nul) [replaced removeObjectForKey:key];
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
        else if ([object isKindOfClass:[NSArray class]]) [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
        else if (([object isKindOfClass:[NSString class]]) && ([(NSString*)object isEqualToString:@""])) [replaced removeObjectForKey:key];
    }
    return [NSDictionary dictionaryWithDictionary:[replaced copy]];
}

@end
