//
//  ChildViewController.h
//  HappyBDay
//
//  Created by Jason on 4/2/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildViewController : UIViewController

@property (nonatomic, strong) NSString *messageString;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (assign, nonatomic) NSInteger index;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end
