//
//  PACAppDelegate.m
//  AccountSystem
//
//  Created by Fosco Marotto on 3/16/13.
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "PACAppDelegate.h"

@implementation PACAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    UIImage *navBackgroundImage = [UIImage imageNamed:@"topBar"];
    [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];

    [Parse setApplicationId:@"USxZCVkTfGJVUn4OIFD6wYiwR3N7lzcmNK79dgEA"
                  clientKey:@"yzrZ9x4uGSI7DMPgMGVRGyukVmLqaIJU9y5WW7u9"];
    
    PFUser *user = [PFUser currentUser];
    [user refreshInBackgroundWithBlock:^(PFObject *object, NSError *error) {
        
    }];
  return YES;
}

@end
