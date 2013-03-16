//
//  PACSplashViewController.h
//  AccountSystem
//
//  Created by Fosco Marotto on 3/16/13.
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PACSplashViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
- (IBAction)didTapLogin:(id)sender;
- (IBAction)didTapSignup:(id)sender;

@end
