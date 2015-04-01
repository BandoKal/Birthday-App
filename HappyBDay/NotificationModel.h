//
//  NotificationModel.h
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationModel : NSObject
@property (nonatomic,strong) NSString *alertTitle,*message;
@property (nonatomic, strong)NSDate *fireDate;

-(instancetype)initWithTitle:(NSString *)title message:(NSString*)message fireDate:(NSDate*)firedate;

@end
