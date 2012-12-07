//
//  AOCViewController.m
//  AOCWeek3
//
//  Created by Justin Rowe on 12/6/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Call the Add function passing in two integer values. Capture the return of this function into a variable.
    
    int addedTotal = [self addFunction:82 toSecondNumber:47];
    
    [self displayAlertWithString:[NSString stringWithFormat:@"The total of both numbers is: %@",[[[NSNumber alloc] initWithInt:addedTotal]stringValue]]];
    
    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    
    NSString * name = [self appendFunction:@"Justin " secondString: @"Rowe"];
    
    [self displayAlertWithString:[NSString stringWithFormat:@"Hello, my name is: %@",[[NSString alloc] initWithString:name]]];
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    if([self compareFunction:88 toNumberTwo:88])
    {
        [self displayAlertWithString:[NSString stringWithFormat:@"Yes, they're the same."]];
    } else {
        [self displayAlertWithString:[NSString stringWithFormat:@"No, they're not the same."]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.

- (int)addFunction:(int)firstNumber toSecondNumber:(int)toSecondNumber
{
    return firstNumber + toSecondNumber;
}

//Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.

- (BOOL)compareFunction:(int)numberOne toNumberTwo:(int)toNumberTwo
{
    if (numberOne == toNumberTwo) {
        return YES;
    } else {
        return NO;
    }
}

//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

- (NSString*)appendFunction:(NSString*)firstString secondString:(NSString*)secondString
{
    NSMutableString * combinedString = [NSMutableString stringWithString:firstString];
    [combinedString appendString:secondString];
    return combinedString;
}

//Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.

- (void)displayAlertWithString:(NSString *)string
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Project Three Results" message:string delegate:self cancelButtonTitle:@"OK"otherButtonTitles:nil, nil];
    [alert show];
}

@end
