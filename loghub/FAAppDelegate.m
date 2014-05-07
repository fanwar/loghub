//
//  FAAppDelegate.m
//  loghub
//
//  Created by Faisal Anwar on 3/20/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

#import "FAAppDelegate.h"

#import "FALogger.h"
#import "FARemoteLogTarget.h"

@interface FAAppDelegate()

@property (strong, nonatomic) FALogger *logger;

@end

@implementation FAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self setupLogging]; 
    
    return YES;
}


- (void) setupLogging {
    
    FARemoteLogTarget *remoteLogger = [[FARemoteLogTarget alloc] initWithTargetUrl:[NSURL URLWithString:@"http://localhost:3000"]];
    
    self.logger = [[FALogger alloc] initWithTargets:@[remoteLogger] andLogLevel:FALogLevelInfo andPrefixBlock:nil];
    
    
    for (int i = 0; i < 10; i++) {
        dispatch_queue_t q = dispatch_queue_create("testqueue", DISPATCH_QUEUE_CONCURRENT);
        dispatch_async(q, ^(void) {
            [self.logger log:[NSString stringWithFormat:@"This is some type of sample test message %d", i]];
        });
        
        usleep(10); 
    }
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
