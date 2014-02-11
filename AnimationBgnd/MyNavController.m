//
//  MyNavController.m
//  AnimationBgnd
//
//  Created by Manuel Betancurt on 12/02/2014.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "MyNavController.h"

@interface MyNavController ()

@end

@implementation MyNavController
 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    UIImageView *catView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cat.jpeg"]];
    catView.frame = CGRectMake(200, 200, 232, 218);
    [self.view addSubview:catView];
    [self.view sendSubviewToBack:catView];
    
    [UIView animateWithDuration:0.6
                          delay:0
                        options: (UIViewAnimationCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat)
                     animations:^{
                         catView.alpha = 0;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"Done!");
                     }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
