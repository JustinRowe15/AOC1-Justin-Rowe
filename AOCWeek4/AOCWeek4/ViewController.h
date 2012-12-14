//
//  ViewController.h
//  AOCWeek4
//
//  Created by Justin Rowe on 12/13/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel * userName;
    UITextField * loginField;
    UIButton * loginButton;
    UILabel * pleaseEnterLabel;
    UIButton * dateButton;
    UILabel * infoLabel;
    UIButton * infoButton;
}

-(void)onClick:(id)button;

@end
