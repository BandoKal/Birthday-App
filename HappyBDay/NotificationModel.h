//
//  NotificationModel.h
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, NotificationType){
    NotificationTypeMorning,
    NotificationTypeMidMorning,
    NotificationTypeNoon,
    NotificationTypeEarlyAfternoon,
    NotificationTypePreDinner,
    NotificationTypeEvening
};

@interface NotificationModel : NSObject
@property (nonatomic,strong) NSString *alertTitle,*message;
@property (nonatomic, strong)NSDate *fireDate;
@property (nonatomic,readwrite)NotificationType notificationType;

-(instancetype)initWithTitle:(NSString *)title message:(NSString*)message fireDate:(NSDate*)firedate notificationType:(NotificationType)notificationType;

@end
