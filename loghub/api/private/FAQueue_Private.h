//
//  FAQueue_Private.h
//  loghub
//
//  Created by Faisal Anwar on 3/22/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import "FAQueue.h"

#define QUEUE_SIZE 100

@interface FALinkedObject : NSObject

@property (nonatomic, strong) NSObject *payload;
@property (nonatomic, strong) FALinkedObject *next;

-(id) initWithPayload: (NSObject *) payload andNextObject: (FALinkedObject *) next;

@end


@interface FAQueue()

@property (nonatomic, strong) FALinkedObject *top;
@property (nonatomic, strong) FALinkedObject *bottom;
@property (assign) NSUInteger size;
@property (nonatomic, strong) NSLock *queueLock;

@end
