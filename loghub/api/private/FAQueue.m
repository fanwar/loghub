//
//  FACircularQueue.m
//  loghub
//
//  Created by Faisal Anwar on 3/20/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import "FAQueue.h"
#import "FAQueue_Private.h"

@implementation FAQueue

- (id) init {
    self = [super init];
    
    if (self) {
        self.queueLock = [[NSLock alloc] init];
        self.top = nil;
        self.bottom = nil;
        self.size = 0;
    }
    
    return self;
}



#pragma mark - Public Interface (FAQueue.h)

- (void) addObject: (NSObject *) obj {
    [self.queueLock lock];
    FALinkedObject *newBottom = [[FALinkedObject alloc] initWithPayload:obj andNextObject:nil];
    
    if (self.bottom == nil) {
        self.top = self.bottom = newBottom;
    } else {
        FALinkedObject *oldBottom = self.bottom;
        self.bottom = newBottom; 
        oldBottom.next = self.bottom;
    }
    self.size += 1;
    [self.queueLock unlock];
}

- (id) removeObject {
    [self.queueLock lock];
    FALinkedObject *oldTopObj = self.top;
    id objToReturn = oldTopObj.payload;
    
    if (oldTopObj == nil) {
        //Don't do anything if hte queue is empty ... will eventually return nil;
    } else if (oldTopObj == self.bottom) {
        //Queue is size 1; Empty it out and adjust size
        self.top = self.bottom = nil;
        self.size -= 1;
    } else {
        self.top = oldTopObj.next;
        self.size -= 1;
    }
    
    [self.queueLock unlock];
    return objToReturn; 
}


- (NSArray *) flush {
    [self.queueLock lock];
    FALinkedObject *oldTopObj = self.top;
    NSUInteger oldSize = self.size;
    self.top = self.bottom = nil;
    self.size = 0;
    [self.queueLock unlock];
    
    NSMutableArray *returnArr = [[NSMutableArray alloc] initWithCapacity:MAX(1, oldSize)];
    
    while (oldTopObj != nil) {
        [returnArr addObject:oldTopObj.payload];
        oldTopObj = oldTopObj.next;
    }
    
    return returnArr;
}




- (NSArray *) removeObjects: (NSInteger) count {
    
    NSMutableArray *objects = [NSMutableArray array];
    [self.queueLock lock];
    
    
    
    [self.queueLock unlock];
    
    return objects;
}


#pragma mark - Other Utility methods


- (NSString *) description {
    NSMutableString *str = [NSMutableString stringWithFormat:@""];
    FALinkedObject *current = self.top;
    if (current == nil) return @"<Empty Queue>";
    while (current != nil) {
        [str appendFormat:@"\t%@\n", [current.payload description]];
        current = current.next;
    }
    
    return str;
}

@end


@implementation FALinkedObject

- (void) dealloc {
    //self.payload = nil;
    //self.next = nil;
}

-(id) initWithPayload: (NSObject *) payload andNextObject: (FALinkedObject *) next {
    self = [super init];
    
    if (self) {
        self.payload = payload;
        self.next = next;
    }
     
    return self;
}

@end