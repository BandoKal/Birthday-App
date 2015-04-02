//
//  NotificationScheduler.m
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "NotificationScheduler.h"
#import "StoryScript.h"
#import "NotificationModel.h"
#import <UIKit/UIKit.h>

@implementation NotificationScheduler

-(void)scheduleNotifications {
    [[UIApplication sharedApplication]registerUserNotificationSettings: [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil ]];
    StoryScript *scripter = [[StoryScript alloc]init];
    for (NotificationModel *model in scripter.script) {
        UILocalNotification *noti = [[UILocalNotification alloc]init];
        noti.alertTitle = [model alertTitle];
        noti.alertBody = [model message];
        noti.fireDate = [model fireDate];
        noti.userInfo = @{@"notificationType":@([model notificationType])};
        [[UIApplication sharedApplication]scheduleLocalNotification:noti];
    }
    
}

@end
