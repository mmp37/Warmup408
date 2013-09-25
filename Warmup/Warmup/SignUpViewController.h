//
//  SignUpViewController.h
//  Warmup
//
//  Created by Matthew Parides on 9/22/13.
//  Copyright (c) 2013 Duke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface SignUpViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *userNameField;
@property (retain, nonatomic) IBOutlet UITextField *passField;
@property (retain, nonatomic) IBOutlet UITextField *passCheckField;
@property (retain, nonatomic) DBManager* localDB;

-(IBAction)selectAndMove:(id)sender;
-(IBAction)resignFirst:(id)sender;

@end
