//
//  NotificationScheduler.m
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "NotificationScheduler.h"
#import "StoryScript.h"
#import <UIKit/UIKit.h>

@implementation NotificationScheduler

-(void)scheduleNotifications {
    [[UIApplication sharedApplication]registerUserNotificationSettings: [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil ]];
    StoryScript *scripter = [[StoryScript alloc]init];
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.alertTitle = [scripter.script[0] alertTitle];
    noti.alertBody = [scripter.script[0] message];
    noti.fireDate = [scripter.script[0] fireDate];
    [[UIApplication sharedApplication]scheduleLocalNotification:noti];
}

@end
