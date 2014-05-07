//
//  FARemoteLogTarget.m
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import "FARemoteLogTarget_Private.h"
#import <AFNetworking/AFNetworking.h>

@implementation FARemoteLogTarget

const NSUInteger FA_FLUSH_LOG_THRESHOLD = 2;

#pragma mark - Public API

- (id) initWithTargetUrl: (NSURL *) targetUrl {
    self = [super init];
    
    if (self) {
        //Custom initialization goes here.
        _logQueue = [[FAQueue alloc] init];
        _workQueue = dispatch_queue_create("FARemoteLogTarget.workQueue", DISPATCH_QUEUE_CONCURRENT);
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(processRemainingLogs) name:UIApplicationDidEnterBackgroundNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(processRemainingLogs) name:UIApplicationWillTerminateNotification object:nil];
    }
    
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _logQueue = nil;
    _workQueue = nil;
}


#pragma mark - FALogTarget Overrides

- (void) log:(NSString *)msg {
    [self.logQueue addObject:msg];
    
    //If the queue gets large enough, then flush it.
    if (self.logQueue.size > FA_FLUSH_LOG_THRESHOLD) {
        FARemoteLogTarget* __weak weakSelf = self;
        dispatch_async(self.workQueue, ^{
            FARemoteLogTarget *strongSelf = weakSelf;
            if (strongSelf) {
                [strongSelf fetchAndSendLogsWithMinimum:FA_FLUSH_LOG_THRESHOLD];
            }
            
        });
    }
}

- (void) processRemainingLogs {
    FARemoteLogTarget* __weak weakSelf = self;
    dispatch_async(self.workQueue, ^{
        FARemoteLogTarget *strongSelf = weakSelf;
        if (strongSelf) {
            [strongSelf fetchAndSendLogsWithMinimum:0];
        }
        
    });
}

-(void) fetchAndSendLogsWithMinimum: (NSUInteger) minimum {
    //Only flush if the queue is larger than some minimum size.
    if (self.logQueue.size > minimum) {
        NSArray *logs = [self.logQueue flush];
        NSMutableArray *logList = [NSMutableArray arrayWithCapacity:[logs count]];
        NSLog(@"Now flushing %d logs ------------ \n", (int)[logs count]);
        for (id log in logs) {
            [logList addObject:@{@"log": log}];
        }
        
        AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
        mgr.responseSerializer = [AFJSONResponseSerializer serializer];
        mgr.requestSerializer = [AFJSONRequestSerializer serializer];
        
        [mgr POST:@"http://localhost:9393/logs/"
       parameters:@{@"logs": logList}
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
              //Success code here
              NSLog(@"Thread %@ --- Succeeded posting logs: %@", [NSThread currentThread], responseObject);
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              //Failure Code here
              NSLog(@"There was an error POSTing logs: %@", error);
          }];
    }
    
}





@end
