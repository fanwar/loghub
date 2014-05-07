//
//  FACircularQueue.h
//  loghub
//
//  Created by Faisal Anwar on 3/20/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 FAQueue is a thread-safe queue data structure. It allows adding and removing single objects at a time and also allows
 flushing all items off of the queue.
 **/
@interface FAQueue : NSObject

@property (readonly) NSUInteger size; 

/**
 Adds the given object to the queue. 
 @param obj - any object you want to add. If nil is provided, then the object is not added to the queue.
 **/
- (void) addObject: (NSObject *) obj;

/**
 Removes the top object on the queue and returns that. 
 @return top object from queue, or nil if the queue is empty.
 **/
- (id) removeObject;

//Empties the queue and returns the list of objects currenlty in the queue.
- (NSArray *) flush;

@end
