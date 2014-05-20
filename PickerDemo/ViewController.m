//
//  ViewController.m
//  PickerDemo
//
//  Created by Mohamed Fawzy on 5/18/14.
//  Copyright (c) 2014 Mohamed fawzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *moods;

@end

@implementation ViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.moods count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.moods[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    UIColor *moodColor;
    switch (row) {
        case 0: case 2: case 4:
            moodColor = [UIColor blueColor];
            break;
        case 1: case 3:
            moodColor = [UIColor brownColor];
            break;
            
        default:
            moodColor = [UIColor whiteColor];
            break;
    }
    
    [[self view] setBackgroundColor:moodColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.moods = @[@"Happy",@"Sad",@"Optimistic",@"Good",@"bad",@"whatever",@"demo",@"Hacking",@"lifestyle",@"shopping",@"feeling",@"love",@"Relaxed"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
