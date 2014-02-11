//
//  VC1ViewController.m
//  AnimationBgnd
//
//  Created by Manuel Betancurt on 12/02/2014.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "VC1ViewController.h"

#import "VC2ViewController.h"

@interface VC1ViewController ()

@end

@implementation VC1ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.6];
    
    UIButton *botonNav = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    botonNav.frame = CGRectMake(200, 200, 100, 50);
    [botonNav setTitle:@"Next" forState:UIControlStateNormal];
    [botonNav addTarget:self action:@selector(botonAct:) forControlEvents:UIControlEventTouchUpInside];
    botonNav.backgroundColor = [UIColor blueColor];
    [self.view addSubview:botonNav];
}


- (void)botonAct:(id)sender
{
    VC2ViewController *vc2VC = [[VC2ViewController alloc]init];
    [self.navigationController pushViewController:vc2VC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
