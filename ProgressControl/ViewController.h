//
//  ViewController.h
//  ProgressControl
//
//  Created by Aseem 1 on 23/11/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblPercentageCompleted;
- (IBAction)startProgress:(id)sender;
@property (strong,nonatomic) NSTimer *myTimer;

@property (strong, nonatomic) IBOutlet UIProgressView *progressView;

@end

