//
//  FALogTarget.h
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FALogTarget.h"

//Internal api for the FALogTarget class; Not to be consumed by client apps
@interface FALogTarget()

/**
 Log the given message as is fit for the target.
 **/
- (void) log: (NSString *) msg;

@end
