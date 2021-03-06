//
//  ViewController.m
//  ProgressControl
//
//  Created by Dhruv on 23/11/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import "ViewController.h"
static int count;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   _progressView.progressTintColor = [UIColor redColor];
    _progressView.progress = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startProgress:(id)sender {
    _progressView.progress = 0;

    count = 0;
    self.lblPercentageCompleted.text = [NSString stringWithFormat:@"%d %%",count*10];
    
    _progressView.progress = (float)count/10.0f;

    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES];
    
}

-(void)updateUI:(NSTimer *) timer{
        count++;
    if (count <= 10) {
        self.lblPercentageCompleted.text = [NSString stringWithFormat:@"%d %%",count*10];
       
        _progressView.progress = (float)count/10.0f;
        
    }
       else{
    
        [_myTimer invalidate];
        _myTimer = nil;
    }
}

-(UIStatusBarStyle)preferredStatusBarStyle{

    return UIStatusBarStyleLightContent;
}
// Hide Status Bar

-(BOOL)prefersStatusBarHidden{
    return YES;
}
@end
