//
//  ViewController.m
//  HappyBDay
//
//  Created by Jason on 3/31/15.
//  Copyright (c) 2015 BandoKal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:@"http://www.jigsawplanet.com/?rc=play&pid=2b2ee09ee10b"]];
    [self.webView loadRequest:request];
    
}

- (IBAction)userTouchedImDoneButton:(id)sender {
    //TODO: userdefaults for if app is open
    abort();
}

@end
