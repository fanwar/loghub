//
//  FACircularQueueTests.m
//  loghub
//
//  Created by Faisal Anwar on 3/20/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "FAQueue.h"
#import "FAQueue_Private.h"

NSString *const LONG_TEST_STRING = @"This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz This is some really long string abcdefghijklmnopqrstuvwxyz ";

@interface FAQueueTests : XCTestCase

@end

@implementation FAQueueTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}


- (void) testAddObject {
    FAQueue *queue = [[FAQueue alloc] init];
    
    XCTAssert(queue.size == 0);
    
    NSString *str = @"some_random_string";
    [queue addObject: str]; //add a string to the queue
    XCTAssert(queue.size == 1);
    XCTAssert(queue.top.payload == str);
    XCTAssert(queue.bottom.payload == str);
    
    NSNumber *num = @42;
    [queue addObject: num]; //add a number to the queue
    XCTAssert(queue.size == 2);
    XCTAssert(queue.top.payload == str);
    XCTAssert(queue.bottom.payload == num);
}


- (void) testRemoveObject {
    FAQueue *queue = [[FAQueue alloc] init];
    XCTAssert(queue.size == 0);
    
    NSArray *testObjs = @[@"str1", @42, @[@1, @2], @"str3"];
    
    //First add a bunch of objects to the queue
    for (id obj in testObjs) {
        [queue addObject: obj];
    }
    XCTAssert(queue.size == [testObjs count]);
    
    for (int i = 0; i < [testObjs count]; i++) {
        id expectedTopObj = [testObjs objectAtIndex: i];
        id topObj = [queue removeObject];
        XCTAssert(expectedTopObj == topObj);
        XCTAssert(queue.size == [testObjs count] - (i+1));
    }
    
    //At this point queue should be empty. Ensure that nil is returned when you
    //removeObject from an empty queue.
    XCTAssert(queue.size == 0, @"Queue should be empty by now");
    XCTAssert([queue removeObject] == nil, @"Calling removeObject on empty FAQueue should return nil!"); 
}


- (void) testFlush {
    FAQueue *queue = [[FAQueue alloc] init];
    XCTAssert(queue.size == 0);
    
    NSArray *testObjs = @[@"str1", @42, @[@1, @2], @"str3"];
    //First add a bunch of objects to the queue
    for (id obj in testObjs) {
        [queue addObject: obj];
    }
    XCTAssert(queue.size == [testObjs count]);
    
    NSArray *allObjs = [queue flush];
    XCTAssert([allObjs isEqualToArray:testObjs]);
    XCTAssert(queue.size == 0);
    
    [queue addObject:@"some other string"];
    XCTAssert(queue.size == 1);
    NSArray *secondFlush = [queue flush];
    XCTAssert([secondFlush isEqualToArray:@[@"some other string"]]);
    XCTAssert(queue.size == 0);
    
    
    NSArray *emptyFlush = [queue flush];
    XCTAssert(emptyFlush != nil && [emptyFlush count] == 0, @"Flushing empty queue shoudl return empty array");
    
}

- (void)testThreadedAddRemove {
    
    for (int j = 0; j < 10; j++) {
        FAQueue *queue = [[FAQueue alloc] init];
        
        dispatch_group_t group = dispatch_group_create();
        dispatch_queue_t q1 = dispatch_queue_create("FAQueueTests.q1", DISPATCH_QUEUE_CONCURRENT);
        dispatch_queue_t q2 = dispatch_queue_create("FAQueueTests.q2", DISPATCH_QUEUE_SERIAL);
        
        /**
         There appears to be a crash (at least on the simulator) when the number of iterations below is set to
         more than 50K or so. Not sure why it happens, but that is something that would need to be debugged.
         **/
        const NSUInteger ITERATIONS =  1000;

        for (int i = 0; i < ITERATIONS; i++) {
            NSNumber *obj = [NSNumber numberWithInt: i];
            dispatch_group_async(group, q1, ^{
                usleep(10);
                [queue addObject:obj];
            });
            
            NSString *str = [NSString stringWithFormat:@"%d -- %@", i, LONG_TEST_STRING];
            dispatch_group_async(group, q2, ^{
                usleep(10);
                [queue addObject:str];
            });
            
            dispatch_group_async(group, q2, ^{
                usleep(10);
                id obj = [queue removeObject];
                XCTAssertNotNil(obj, @"Object returned from top of queue should not be nil since one was added just earlier on a serial queue.");
                
            });
            
        }
        
        dispatch_group_wait(group, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC));        
        
        XCTAssert(queue.size == ITERATIONS);
        
    }
}

- (void) testThreadedFlushAddRemove {
    
    /**
     Test Strategy:
     - Set up a few concurrent queues on which to schedule add, remove and flush operations
     - Loop over and add such operations all at once. 
     - Separately, create a recoverdObjectsArr that tracks all the objects removed & flushed
       from the queue. 
     - Make sure the number of items added is predictable. Then the number of items removed/flushed
       should be the same as those added (including one final flush on the main thread). 
     - Adding removed/flushed items should happen in a thread safe manner. Here, we use a single serial queue to 
       add flushed/removed items. We also use a dispatch_group_wait on that serial queue's blocks at the end to
       do the final flush on the main thread after all serial queue modifications have completed.
     **/
    
    for (int j = 0; j < 10; j++) {

        FAQueue *queue = [[FAQueue alloc] init];
        dispatch_group_t group1 = dispatch_group_create();
        dispatch_group_t group2 = dispatch_group_create();
        
        dispatch_queue_t q1 = dispatch_queue_create("FAQueueTests.q1", DISPATCH_QUEUE_CONCURRENT);
        dispatch_queue_t q2 = dispatch_queue_create("FAQueueTests.q2", DISPATCH_QUEUE_CONCURRENT);
        dispatch_queue_t arrayModifyQueue = dispatch_queue_create("FAQueueTests.arrayModifyQueue", DISPATCH_QUEUE_SERIAL);
        
        NSUInteger const ITERATIONS = 1000;
        
        //Add objects back to this array after removing or flushing them from the queue.
        
        NSMutableArray *recoveredObjectsArr = [NSMutableArray arrayWithCapacity:ITERATIONS*2];
        NSLog(@"###### %@", nil);
        for (int i = 0; i < ITERATIONS; i++) {
            dispatch_group_async(group1, q1, ^{
                //Add objects to the queue on dispatch_queue #1
                usleep(10);
                NSString *str = [[NSString alloc] initWithFormat:@"Q1 -- %d -- %@", i, LONG_TEST_STRING];
                [queue addObject:str];
            });
            
            dispatch_group_async(group1, q2, ^{
                //Add objects to the queue on dispatch_queue #2
                usleep(10);
                NSString *str = [[NSString alloc] initWithFormat:@"Q2 -- %d -- %@", i, LONG_TEST_STRING];
                [queue addObject:str];
            });
            
            dispatch_group_async(group1, q1, ^{
                //Remove objects from the queue one-by-one on dispatch_queue #1. Could be nil if the queue was empty
                id obj = [queue removeObject];
                if (obj != nil) {
                    //We're modifying an nsmutablearray, which isn't thread-safe, so let's make sure to do that on the main thread.
                    dispatch_group_async(group2, arrayModifyQueue, ^{
                        [recoveredObjectsArr addObject:obj];
                    });
                    
                }
                [obj hash];
            });
            
            
            dispatch_group_async(group1, q2, ^{
                //Remove objects from the queue one-by-one on dispatch_queue #1. Could be nil if the queue was empty
                NSArray *objs = [queue flush];
                XCTAssertNotNil(objs, @"flush should never return nil .. it should return an empty array if the queue is empty");
                //We're modifying an nsmutablearray, which isn't thread-safe, so let's make sure to do that on the main thread.
                dispatch_group_async(group2, arrayModifyQueue, ^{
                    [recoveredObjectsArr addObjectsFromArray:objs];
                });
            });
            
        }
        
        //Now wait for everything above to finish. Then, go ahead and flush any final items out of the queue and add them to the recoverdObjectsArr. At this point
        //recoveredObjectsArr should have recovered all objects that had been added to the queue.
        dispatch_group_wait(group1, dispatch_time(DISPATCH_TIME_NOW, 10*NSEC_PER_SEC));
        dispatch_group_wait(group2, dispatch_time(DISPATCH_TIME_NOW, 10*NSEC_PER_SEC));
        XCTAssert([recoveredObjectsArr count] > (ITERATIONS*2)/4, @"At least a good percentage of objects should have been recoverd via remove and flush in async blocks but we only got %d", (int)[recoveredObjectsArr count]);
        [recoveredObjectsArr addObjectsFromArray:[queue flush]];
        
        XCTAssert([recoveredObjectsArr count] == ITERATIONS*2, @"Expected %d items, but we only got %d", (int)ITERATIONS*2, (int)[recoveredObjectsArr count]);
        XCTAssert(queue.size == 0, @"Queue should be empty at this point");
    }
    
}

@end
