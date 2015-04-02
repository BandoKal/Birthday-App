//
//  NotificationModel.m
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "NotificationModel.h"

@implementation NotificationModel

-(instancetype)initWithTitle:(NSString *)title message:(NSString *)message fireDate:(NSDate *)firedate notificationType:(NotificationType)notificationType{
    self = [super init];
    if (self) {
        _alertTitle = title;
        _message = message;
        _fireDate = firedate;
        _notificationType = notificationType;
    }
    return self;
}
@end
