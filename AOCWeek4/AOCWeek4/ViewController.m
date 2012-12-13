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
    
    //User Name Label
    UILabel * userName = [[UILabel alloc] initWithFrame:CGRectMake(0, 10.0f, 100.0f, 40.0f)];
    {
        userName.text = @"Username:";
        userName.textColor = [UIColor blackColor];
        userName.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:userName];
    
    //Login Field
    loginField = [[UITextField alloc] initWithFrame:CGRectMake(85.0f, 15.0f, 220.0f, 30.0f)];
    [loginField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:loginField];
    
    //Login Button
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginButton setFrame:CGRectMake(215.0f, 50.0f, 90.0f, 30.0f)];
    [loginButton setTitle:@"Enter" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    //Please Enter Username Label
    UILabel * pleaseEnter = [[UILabel alloc] initWithFrame:CGRectMake(0, 110.0f, self.view.frame.size.width, 70.0f)];
    {
        pleaseEnter.text = @"Please Enter Username";
        pleaseEnter.textColor = [UIColor blueColor];
        pleaseEnter.textAlignment = NSTextAlignmentCenter;
        pleaseEnter.backgroundColor = [UIColor lightGrayColor];
    }
    
    [self.view addSubview:pleaseEnter];
    
    //Date Button
    UIButton * dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dateButton setFrame:CGRectMake(20.0f, 240.0f, 100.0f, 50.0f)];
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    [self.view addSubview:dateButton];
    
    //Info Button
    UIButton * infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton setFrame: CGRectMake(20.0f, 360.0f, 20.0f, 20.0f)];
    [self.view addSubview:infoButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)loginPress
{
    NSString * loginText = [loginField text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
