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
    _localDB = [DBManager getSharedInstance];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selectAndMove:(id)sender {
    
    if([((UIButton*)sender).titleLabel.text isEqualToString:@"Sign Up"]){
        [self performSegueWithIdentifier:@"SignUpSeg" sender:self];
    }
    else {
        NSArray * userPassArr = [self.localDB findByUserName:self.idField.text];
        if ([userPassArr containsObject:self.passField.text]) {
            [self performSegueWithIdentifier:@"CompleteSeg" sender:self];
        }
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
