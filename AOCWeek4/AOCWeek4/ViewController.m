//
//  ViewController.m
//  AOCWeek4
//
//  Created by Justin Rowe on 12/13/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import "ViewController.h"

#define loginClick 0
#define dateClick 1
#define infoClick 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Container
    containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:containerView];
    
    //User Name Label
    userName = [[UILabel alloc] initWithFrame:CGRectMake(0, 10.0f, 100.0f, 40.0f)];
    {
        userName.text = @"Username:";
        userName.textColor = [UIColor blackColor];
        userName.textAlignment = NSTextAlignmentLeft;
    }
    [self.view addSubview:userName];
    
    //Login Field
    loginField = [[UITextField alloc] initWithFrame:CGRectMake(85.0f, 15.0f, 220.0f, 30.0f)];
    [loginField setBorderStyle:UITextBorderStyleRoundedRect];
    [loginField setDelegate:self];
    [self.view addSubview:loginField];
    
    //Login Button
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginButton setTag:loginClick];
    [loginButton setFrame:CGRectMake(215.0f, 50.0f, 90.0f, 30.0f)];
    [loginButton setTitle:@"Enter" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    //Please Enter Username Label
    pleaseEnterLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110.0f, self.view.frame.size.width, 70.0f)];
    [pleaseEnterLabel setText: @"Please Enter Username"];
    [pleaseEnterLabel setTextColor:[UIColor blueColor]];
    [pleaseEnterLabel setTextAlignment:NSTextAlignmentCenter];
    [pleaseEnterLabel setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:pleaseEnterLabel];
    
    //Date Button
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dateButton setTag:dateClick];
    [dateButton setFrame:CGRectMake(20.0f, 240.0f, 100.0f, 50.0f)];
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dateButton];
    
    //Info Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton setTag:infoClick];
    [infoButton setFrame: CGRectMake(20.0f, 360.0f, 20.0f, 20.0f)];
    [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:infoButton];
    
    //Info Label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 380.0f, self.view.frame.size.width, 100.0f)];
    [infoLabel setTextColor:[UIColor greenColor]];
    [infoLabel setTextAlignment:NSTextAlignmentCenter];
    [infoLabel setBackgroundColor:[UIColor whiteColor]];
    [infoLabel setNumberOfLines:2];
    [self.view addSubview:infoLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick:(id)button {
    switch ([button tag]) {
        case loginClick:
            if ([loginField.text length] > 0)
            {
                [pleaseEnterLabel setText:[NSString stringWithFormat:@"User: %@ has logged in.", [loginField text]]];
                [loginField resignFirstResponder];
            } else
            {
                [pleaseEnterLabel setText:@"Username Cannot Be Empty"];
            }
            break;
            
        case dateClick:
            {
                NSDate * todaysDate = [NSDate date];
                NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
                [dateFormat setDateStyle:NSDateFormatterMediumStyle];
                [dateFormat setTimeStyle:NSDateFormatterLongStyle];
                UIAlertView * dateView = [[UIAlertView alloc] initWithTitle:@"Today's Date" message:[NSString stringWithFormat:@"%@",[dateFormat stringFromDate: todaysDate]] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                [dateView show];
            }
            break;
            
        case infoClick:
            [infoLabel setText: @"This application was written by Justin Rowe"];
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
