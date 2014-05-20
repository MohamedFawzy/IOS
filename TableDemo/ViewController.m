//
//  ViewController.m
//  TableDemo
//
//  Created by Mohamed Fawzy on 5/19/14.
//  Copyright (c) 2014 Mohamed fawzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSDictionary *courseDetails;
    NSArray *courseName;
    
    NSDictionary *webCourseDetails;
    NSArray *webCourseName;
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0){
        return courseDetails.count;
    }else{
        return webCourseDetails.count;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"IOS courses";
    }else{
        return @"Web courses";
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // create cell
    //UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    // retreive image
    //UIImage *myImage = [UIImage imageNamed:@"DemoCellImage"];
    //[cell.imageView setImage:myImage];
    
    // fill cell
    if (indexPath.section == 0) {
        cell.textLabel.text = courseName[indexPath.row];
        cell.detailTextLabel.text = courseDetails[courseName[indexPath.row]];
    }else{
        cell.textLabel.text = webCourseName[indexPath.row];
        cell.detailTextLabel.text = webCourseDetails[webCourseName[indexPath.row]];
    }
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"courses" withExtension:@"plist"];
    // load them into dictonray object
    courseDetails = [NSDictionary dictionaryWithContentsOfURL:url];
    // create an array for get index
    courseName = courseDetails.allKeys;
    
    NSURL *webUrl = [[NSBundle mainBundle] URLForResource:@"courses_web" withExtension:@"plist"];
    webCourseDetails = [NSDictionary dictionaryWithContentsOfURL:webUrl];
    webCourseName = webCourseDetails.allKeys;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
