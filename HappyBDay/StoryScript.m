//
//  StoryScript.m
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "StoryScript.h"
#import "NotificationModel.h"

@implementation StoryScript

-(instancetype)init {
    self = [super init];
    if (self) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"yyyy/MM/dd HH:mm";
        
        _script = @[ [[NotificationModel alloc]initWithTitle:@"Good Morning"
                                                     message:@"Do stuff."
                                                    fireDate:[formatter dateFromString:@"2015/03/31 23:20"]]];
    }
    
    return self;
}

@end
