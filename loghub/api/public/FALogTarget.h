//
//  FALogTarget.h
//  loghub
//
//  Created by Faisal Anwar on 3/24/14.
//  Copyright (c) 2014 Faisal Anwar. All rights reserved.
//

/**
 A log target represents a particular destination where you want your logs to go. It gets added to an
 FALogger and logs whatever is sent to its parent FALogger. Beyond initialization & setup within the
 FALogger, client code will not need to interact with this object. See individual subclasses to see
 what specific initialization must be done.
 **/
@interface FALogTarget : NSObject


@end