//
//  MidMorningViewController.m
//  HappyBDay
//
//  Created by Jason on 4/3/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "MidMorningViewController.h"
#import "ChildViewController.h"
#import "PageViewController.h"

@interface MidMorningViewController ()
@property (nonatomic, strong)NSArray *childViewControllers, *messageTexts;

@end

@implementation MidMorningViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pgViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pgViewController.dataSource = self;
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    static NSString *viewControllerId = @"ChildViewController";
    
    self.childViewControllers = @[[mainStoryBoard instantiateViewControllerWithIdentifier:viewControllerId],
                                  [mainStoryBoard instantiateViewControllerWithIdentifier:viewControllerId],
                                  [mainStoryBoard instantiateViewControllerWithIdentifier:viewControllerId],
                                  [mainStoryBoard instantiateViewControllerWithIdentifier:viewControllerId],
                                  [mainStoryBoard instantiateViewControllerWithIdentifier:viewControllerId]];
    self.messageTexts = @[@"Hey mom! I just wanted you to know that I love you but I'm not to thrilled with you leaving this morning.",
                          @"Sometimes I don't even know how to take it!",
                          @"So I sleep in your slipper. \nIts like getting a foot hug from you.",
                          @"In fact... Some of the best sleep I've ever gotten. But I'm always up for a birthday adventure!",
                          @"Next time just take me along... I'm a great adventure buddy :-) \nI love you mom, Happy Birthday!"];
    
    for (int i = 0; i<self.childViewControllers.count; i++) {
        ChildViewController *viewController = self.childViewControllers[i];
        viewController.backgroundImage = [UIImage imageNamed:[NSString stringWithFormat:@"IMG_%d.png",i]];
        viewController.messageString = self.messageTexts[i];
        viewController.index = i;
    }
    // Do any additional setup after loading the view.
    ChildViewController *initialViewController = self.childViewControllers[0];
    [self.pgViewController setViewControllers:@[initialViewController]
                                    direction:UIPageViewControllerNavigationDirectionForward|UIPageViewControllerNavigationDirectionForward
                                     animated:NO
                                   completion:^(BOOL finished) {
                                       
                                   }];
    //TODO: change page controller background color
    self.pgViewController.view.backgroundColor = [UIColor darkGrayColor];
    [self addChildViewController:self.pgViewController];
    [self.view addSubview:self.pgViewController.view];
    [self.pgViewController didMoveToParentViewController:self];
}

-(UIViewController*)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [(ChildViewController*)viewController index];
    if (index == 4) {
        return nil;
    }
    
    index++;
    return self.childViewControllers[index];
}

-(UIViewController*)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = [(ChildViewController*)viewController index];
    if (index == 0) {
        return nil;
    }
    
    index--;
    return self.childViewControllers[index];
}

-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}
-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 5;
}



@end
