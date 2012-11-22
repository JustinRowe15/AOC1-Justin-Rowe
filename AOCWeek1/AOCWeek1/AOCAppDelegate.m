//
//  AOCAppDelegate.m
//  AOCWeek1
//
//  Created by Justin Rowe on 11/21/12.
//  Copyright (c) 2012 Justin Rowe. All rights reserved.
//

#import "AOCAppDelegate.h"

@implementation AOCAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //
    //  Week 1 Code Starting Here
    //
    
    //Integers and Float Point Variables Being Declared
    int gallonsOfGasInCar = 8;
    int minutesToWork = 60;
    int carsOnInterstate = 100;
    int carsOnRouteOne = 55;
    float milesPerGallon = 20.89;
    float milesToWork = 18.85;
    float gasNeededToGetToWork = (float) milesToWork / milesPerGallon;
    
    //Float Data Type being called from above equation.
    NSLog(@"The amount of gas needed to get to work is %f gallons",gasNeededToGetToWork);
    
    //If Else Statement
    if (carsOnInterstate <= 120){
        NSLog(@"Take the interstate, there is little traffic.");
    } else {
        NSLog(@"Take the backroads since there are too many cars and you'll be late to work.");
    }
    
    //If and Else If Statement
    if (carsOnRouteOne > 50){
        NSLog(@"Take the backroads since there are too many cars.");
    } else if (carsOnRouteOne == 55){
        NSLog(@"It's close, but might want to take the backroads. Your call.");
    } else {
        NSLog(@"Take Route One, it's fairly clear.");
    }
    
    //If statement with AND operator being used.
    if ((carsOnInterstate > 120) && (carsOnRouteOne > 50)){
        NSLog(@"See if you can carpool with someone to take the fast, high occupancy lane to work.");
    }
    
    //If statement with OR operator being used.
    if((carsOnInterstate == 120) || (carsOnRouteOne == 55)){
        NSLog(@"There's some traffic in both places, but might want to take the backroads or carpool.");
    }
    
    //Boolean variable be declared here
    BOOL enoughGas = ((gallonsOfGasInCar < 1) && (minutesToWork > 60));
    if(enoughGas == NO){
        NSLog(@"We're running late and need to get gas!");
    } else {
        NSLog(@"Off to work!  We have enough gas and we're on time.");
    }
    
    int pumpGallonsIntoCar = 1;
    
    //While Loop
    while (pumpGallonsIntoCar < 12) {
        NSLog(@"There has been %i gallons of gas pumped in my car.",pumpGallonsIntoCar);
        pumpGallonsIntoCar++;
    }
    
    //Nested For Loop
    int minutesPerMile;
    for (int milesTraveled = 1; milesTraveled < 20; milesTraveled++) {
        NSLog(@"We have traveled %i miles so far.",milesTraveled);
        for (minutesPerMile = 1; minutesPerMile < 2; minutesPerMile++) {
            NSLog(@"Right now, we're traveling at %i minute per mile.",minutesPerMile);
        }
    }
    
    //Normal For Loop
    for (int minutesLeftToWork = 60; minutesLeftToWork > 1; minutesLeftToWork--){
        NSLog(@"I have %i minutes left till I get to work.",minutesLeftToWork);
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
