//
//  ViewController.h
//  Warmup
//
//  Created by Matthew Parides on 9/17/13.
//  Copyright (c) 2013 Duke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *idField;
@property (retain, nonatomic) IBOutlet UITextField *passField;

-(IBAction) selectAndMove:(id)sender;
-(IBAction) resignFirst:(id)sender;

@end
