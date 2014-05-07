//
//  FALogger.m
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import "FALogger.h"
#import "FALogTarget_Private.h"

@interface FALogger ()

//A list of FALogTargets to which we will be logging.
@property (nonatomic, strong) NSArray *targets;

@end


@implementation FALogger

/**
 Initialize a new FALogger instance with the given targets and with options
 **/
- (id) initWithTargets: (NSArray *) logTargets
           andLogLevel: (FALogLevel) level
        andPrefixBlock: (LogPrefixBlock) prefixBlock {
    
    self = [super init];
    
    if (self) {
        //Custom initialization goes here.
        self.targets = logTargets; 
    }
    
    return self;
    
}

- (void) log: (NSString *) msg  {
    //NSLog(@"%@", msg);
    for (id target in self.targets) {
        if ([target isKindOfClass:[FALogTarget class]]) {
            [(FALogTarget *)target log:msg];
        }
    }
}

@end
