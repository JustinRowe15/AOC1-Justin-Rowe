//
//  AOCViewController.m
//  AOCWeek2
//
//  Created by Justin Rowe on 11/29/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    //Code Starts Here
    
    //Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    
    UILabel * titleOfBook[[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0f, 30.0f)];
    {
        titleOfBook.text = @"The Automatic Millionaire";
        titleOfBook.textAlignment = NSTextAlignmentCenter;
        titleOfBook.backgroundColor = [UIColor whiteColor];
        titleOfBook.textColor = [UIColor grayColor];
    }
    
    //Create another label that contains the text "Author:" with the text right justified.

    UILabel * authorOfBook[[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0f, 30.0f)];
    {
        authorOfBook.text = @"David Bach";
        authorOfBook.textAlignment = NSTextAlignmentRight;
        authorOfBook.textColor = [UIColor greenColor];
        authorOfBook.backgroundColor = [UIColor grayColor];
    }
    
    //Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    UILabel * authorTitle[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 30.0f)];
    {
        authorTitle.text = @"Author: ";
        authorTitle.textAlignment = NSTextAlignmentLeft;
        authorTitle.textColor = [UIColor yellowColor];
        authorTitle.backgroundColor = [UIColor purpleColor];
    }
    
    //Create a UILabel on the next line called "Published:". This text is right justified.
    
    UILabel * publishedTitle[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 30.0f)];
    {
        publishedTitle.text = @"Year Published: ";
        publishedTitle.textAlignment = NSTextAlignmentRight;
        publishedTitle.textColor = [UIColor orangeColor];
        publishedTitle.backgroundColor = [UIColor greenColor];
    }
    
    //Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    UILabel * publishedYear[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 30.0f)];
    {
        publishedYear.text = @"2004";
        publishedYear.textAlignment = NSTextAlignmentLeft;
        publishedYear.textColor = [UIColor greenColor];
        publishedYear.backgroundColor = [UIColor grayColor];
    }
    
    //Create a UILabel with the text "Summary". This text is left justified.
    
    UILabel * summaryOfBook[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 30.0f)];
    {
        summaryOfBook.text = @"Simple steps provided on how to save money, spend less on the little things and invest it right to become an automatic millionaire.";
        summaryOfBook.textAlignment = NSTextAlignmentLeft;
        summaryOfBook.textColor = [UIColor greenColor];
        summaryOfBook.backgroundColor = [UIColor grayColor];
    }
    
    //Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    UILabel * plotOfBook[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 30.0f)];
    {
        plotOfBook.text = @"David Bach goes over multiple steps on how to become an automatic millionaire by eliminating the Latte Factor, investing automatically in company stock or 401(k), paying yourself first when you get your paycheck and finally, investing in homeownership.";
        plotOfBook.textAlignment = NSTextAlignmentCenter;
        plotOfBook.textColor = [UIColor greenColor];
        plotOfBook.backgroundColor = [UIColor grayColor];
    }
    
    //Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    
    //Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas.
    
    //Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    
    //Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    //Code Ends Here
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
