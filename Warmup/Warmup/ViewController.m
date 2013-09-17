//
//  ViewController.m
//  Warmup
//
//  Created by Matthew Parides on 9/17/13.
//  Copyright (c) 2013 Duke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selectAndMove:(id)sender {
    if ([self.idField.text isEqualToString:@"mmp37"] && [self.passField.text isEqualToString:@"fakepassword"]) {
        [self performSegueWithIdentifier:@"CompleteSeg" sender:self];
    }
}

-(IBAction)resignFirst:(id)sender{
    [sender resignFirstResponder];
}



- (void)dealloc {
    [_passField release];
    [_idField release];
    [super dealloc];
}
@end
