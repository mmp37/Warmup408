//
//  SignUpViewController.m
//  Warmup
//
//  Created by Matthew Parides on 9/22/13.
//  Copyright (c) 2013 Duke. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

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
    [super viewDidLoad];
    _localDB = [DBManager getSharedInstance];
	// Do any additional setup after loading the view.
}

-(IBAction)selectAndMove:(id)sender {
    NSArray* ids = [self.localDB findByUserName:self.userNameField.text];
    if ([ids count] > 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"User Exists"
                                                        message:@"This user name is in use, please select another"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    else {
        if ([self.passField.text isEqualToString:self.passCheckField.text]) {
            [self.localDB saveData:self.userNameField.text password:self.passField.text];
            [self performSegueWithIdentifier:@"SignUpRetSeg" sender:self];
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Passwords don't match"
                                                            message:@"Please re-enter your passwords"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            [alert release];
            self.passField.text = @"";
            self.passCheckField.text = @"";
        }
    }
}

-(IBAction)resignFirst:(id)sender{
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_userNameField release];
    [_passField release];
    [_passCheckField release];
    [super dealloc];
}
@end
