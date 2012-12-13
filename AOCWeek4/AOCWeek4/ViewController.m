//
//  ViewController.m
//  AOCWeek4
//
//  Created by Justin Rowe on 12/13/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginButton setFrame:CGRectMake(200.0f, 70.0f, 90.0f, 30.0f)];
    [loginButton setTitle:@"Enter" forState:UIControlStateNormal];
    [self.view addSubview:loginButton];
    
    UIButton * dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dateButton setFrame:CGRectMake(20.0f, 240.0f, 100.0f, 50.0f)];
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    [self.view addSubview:dateButton];
    
    UIButton * infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton setFrame: CGRectMake(20.0f, 360.0f, 20.0f, 20.0f)];
    [self.view addSubview:infoButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
