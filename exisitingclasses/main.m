//
//  main.m
//  exisitingclasses
//
//  Created by Mohamed Fawzy on 5/7/14.
//  Copyright (c) 2014 Mohamed fawzy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSString *msg = @"Hey let the hacking begin";
        NSString *allCaps = [msg uppercaseString];
        NSLog(@"The result is %@", allCaps);
        
        NSDate *today = [[NSDate alloc] init];
        NSLog(@"Today is %@", today);
    }
    return 0;
}

