//
//  AOCViewController.h
//  AOCWeek3
//
//  Created by Justin Rowe on 12/6/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOCViewController : UIViewController

//Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.

- (int)addFunction:addFirstNumber:(int)y toSecondNumber:(int)z;

//Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.

- (BOOL)compareFunction:compareFirstNumber:(int)y toSecondNumber:(int)z;

//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

- (NSString*)appendFunction:(NSString*)firstString secondString:(NSString*)secondString;

//Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.

- (void)displayAlertWithString:(NSString *)string;

@end
