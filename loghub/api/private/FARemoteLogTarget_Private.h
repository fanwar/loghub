//
//  FARemoteLogTarget.h
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FALogTarget_Private.h"
#import "FARemoteLogTarget.h"
#import "FAQueue.h"

//Private interface for FARemoteLogTarget
@interface FARemoteLogTarget()


@property (nonatomic, readonly) FAQueue *logQueue;
@property (nonatomic, strong) dispatch_queue_t workQueue;

@end
