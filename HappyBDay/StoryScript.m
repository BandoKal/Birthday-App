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
        
        _script = @[[[NotificationModel alloc]initWithTitle:@"Good Morning"
                                                    message:@"Open now for your B-day message."
                                                   fireDate:[formatter dateFromString:@"2015/04/04 08:00"]
                                           notificationType:NotificationTypeMorning],
                    [[NotificationModel alloc]initWithTitle:@"Happy Birthday Brunch!"
                                                    message:@"Open now for your B-day message."
                                                   fireDate:[formatter dateFromString:@""]
                                           notificationType:NotificationTypeMidMorning],
                    [[NotificationModel alloc]initWithTitle:@"The Sun is Sky High!"
                                                    message:@"Psst... open for you B-day message."
                                                   fireDate:[formatter dateFromString:@""]
                                           notificationType:NotificationTypeNoon],
                    [[NotificationModel alloc]initWithTitle:@"Are you ready for dinner?"
                                                    message:@"Still pretty early perhaps a puzzle?"
                                                   fireDate:[formatter dateFromString:@""]
                                           notificationType:NotificationTypeEarlyAfternoon],
                    [[NotificationModel alloc]initWithTitle:@"Are you ready yet????"
                                                    message:@"You are beatiful before you even start."
                                                   fireDate:[formatter dateFromString:@""]
                                           notificationType:NotificationTypePreDinner],
                    [[NotificationModel alloc]initWithTitle:@""
                                                    message:@""
                                                   fireDate:[formatter dateFromString:@""]
                                           notificationType:NotificationTypeEvening]];
    }
    
    return self;
}

@end
