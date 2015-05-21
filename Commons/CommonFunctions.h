//
//  CommonFunctions.h
//  Commons
//
//  Created by Marc Dermejian on 06/05/2015.
//  Copyright (c) 2015 Fexco Software Group. All rights reserved.
//

#ifndef Commons_CommonFunctions_h
#define Commons_CommonFunctions_h

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)



#define RGBCOLOR(R,G,B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]
#define RGBACOLOR(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]


#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

static inline float degreesToRadians(float degrees) {
    return degrees * M_PI / 180.0;
}

static inline float radiansToDegrees(float radians) {
    return radians * 180.0 / M_PI;
}


#endif
