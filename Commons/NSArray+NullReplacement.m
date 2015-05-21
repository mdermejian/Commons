//
//  NSArray+NullReplacement.m
//  BureauDeChange
//
//  Created by Marc Dermejian on 04/02/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#import "NSArray+NullReplacement.h"
#import "NSDictionary+NullReplacement.h"

@implementation NSArray (NullReplacement)

- (NSArray *)arrayByReplacingNullsWithBlanks  {
    NSMutableArray *replaced = [self mutableCopy];
    const id nul = [NSNull null];
    
    for (int idx = 0; idx < [replaced count]; idx++) {
        id object = [replaced objectAtIndex:idx];
        if (object == nul) [replaced removeObjectAtIndex:idx];
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
        else if ([object isKindOfClass:[NSArray class]]) [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
        else if (([object isKindOfClass:[NSString class]]) && ([(NSString*)object isEqualToString:@""])) [replaced removeObjectAtIndex:idx];
    }
    return [replaced copy];
}

@end
