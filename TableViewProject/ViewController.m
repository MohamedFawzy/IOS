//
//  ViewController.m
//  TableViewProject
//
//  Created by Mohamed Fawzy on 5/5/14.
//  Copyright (c) 2014 Mohamed fawzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *soundTitles;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    soundTitles = [[NSArray alloc] initWithObjects:
                   
                   @"Singing birds",
                   @"Wind chimes",
                   @"Faling Rain",
                   @"Ocean",
                   @"Whale son",
                   nil];
                   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
