//
//  AppDelegate.m
//  HelloXcode
//
//  Created by ITCS2825 Kozlevcar on 1/16/15.
//  Copyright (c) 2015 lcc. All rights reserved.
//

#import "AppDelegate.h"
#import <Foundation/Foundation.h>

@implementation AppDelegate

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

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [self.window addSubview:createLbl( 5.0, 50.0,  @"Hello Xcode" )];
    [self.window addSubview:createLbl( 5.0, 100.0, @"by" )];
    [self.window addSubview:createLbl( 5.0, 150.0, @"Gary Coakley" )];

    self.window.rootViewController=[UIViewController new];
    NSLog(@"Hello Xcode (again)");
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
     
    
    return YES;
}

UILabel *createLbl( float aOver, float aDown, NSString *aNStr )
{
    UILabel *lblNew;

    lblNew = [[UILabel alloc] initWithFrame:CGRectMake(aOver, aDown, 300.0, 100.0)];
    lblNew.font = [UIFont systemFontOfSize:48.0];
    lblNew.text=aNStr;
    lblNew.textColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];
    return lblNew;
}
@end
