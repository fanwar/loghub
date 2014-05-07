//
//  FALogger.h
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FALogTarget.h"


typedef enum {
    FALogLevelInfo,
    FALogLevelWarn,
    FALogLevelError
} FALogLevel;


typedef NSString*(^LogPrefixBlock)();


@interface FALogger : NSObject

/**
 Initialize a new FALogger instance with the given targets and with options
 **/
- (id) initWithTargets: (NSArray *) logTargets
           andLogLevel: (FALogLevel) level
        andPrefixBlock: (LogPrefixBlock) prefixBlock;


- (void) log: (NSString *) msg;



@end
