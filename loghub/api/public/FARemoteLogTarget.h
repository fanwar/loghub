//
//  FARemoteLogTarget.h
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//


/**
 A Log target that will log to a remote API efficiently. You can subclass this method and override the various
 http methods to log to your own api in a custom fashion (with custom headers, etc.) while still getting the 
 underlying behaviors for efficiently logging to a remote target.
 **/
@interface FARemoteLogTarget : FALogTarget

- (id) initWithTargetUrl: (NSURL *) targetUrl;
- (NSURL *) url;
- (NSDictionary *) headers;
- (NSString *) body;
- (NSString *) method;

@end