//
//  PACSplashViewController.m
//  AccountSystem
//
//  Created by Fosco Marotto on 3/16/13.
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "PACSplashViewController.h"

@interface PACSplashViewController ()

@end

@implementation PACSplashViewController

@synthesize activityIndicator, loginButton, signupButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"Splash - viewDidLoad");
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // [self checkStatus];
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"Splash - viewDidAppear");
    [self checkStatus];
}

- (void)checkStatus {
    NSLog(@"Splash - checkStatus");
    [activityIndicator startAnimating];
    [loginButton setHidden:YES];
    [signupButton setHidden:YES];
    
    if ([PFUser currentUser]) {
        [self performSegueWithIdentifier:@"splashToMain" sender:self];
    } else {
        [activityIndicator stopAnimating];
        [loginButton setHidden:NO];
        [signupButton setHidden:NO];
    }    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapLogin:(id)sender {
    NSLog(@"Splash - didTapLogin");
    [self performSegueWithIdentifier:@"splashToLogin" sender:self];
}

- (IBAction)didTapSignup:(id)sender {
    NSLog(@"Splash - didTapSignup");
    [self performSegueWithIdentifier:@"splashToSignup" sender:self];
}
@end
