//
//  ViewController.m
//  ActionSheetDemo
//
//  Created by Mohamed Fawzy on 5/4/14.
//  Copyright (c) 2014 Mohamed fawzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)showSheet:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                   initWithTitle:@"Hello World"
                                   delegate: self
                                   cancelButtonTitle: @"Cancel Button"
                                   destructiveButtonTitle: @"Destructive button"
                                   otherButtonTitles:@"Button1 ",@"Button2", nil
                                  ];
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *) actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Destructive button");
            break;
        case 1:
            NSLog(@"Button 1 clicked");
            break;
        case 2:
            NSLog(@"Button2 clicked");
            break;
        case 3:
            NSLog(@"cancel button clicked");
            break;
        default:
            break;
    }
}
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

@end
