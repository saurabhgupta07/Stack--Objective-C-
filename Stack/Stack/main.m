//
//  main.m
//
//  Tests Stack Class
//  Created by Saurabh Gupta on 9/3/14.
//  Copyright (c) 2014 Saurabh Gupta. All rights reserved.
//

//  Saurabh Gupta
//  CIS 651
//  HW - 1

#import <Foundation/Foundation.h>
#import "Stack.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        id k = @10;
        Stack *s = [[Stack alloc]initWithSize  : 100];
         NSLog(@"%@",s);
        [s empty] ? NSLog(@"Stack is Empty") : NSLog(@"Stack is not Empty");
        [s push : [NSNumber numberWithInt :5]];
        NSLog(@"Element at the top is : %@",[s peek]);
        [s push : [NSNumber numberWithInt :10]];
        NSLog(@"Element at the top is : %@", [s peek]);
        [s push : [NSNumber numberWithInt :15]];
        NSLog(@"Element at the top is : %@", [s peek]);
        NSLog(@"%@",s);
        NSLog(@"Stack s popped element is : %@",[s pop]);
        NSLog(@"Element at the top is : %@", [s peek]);
        [s empty] ? NSLog(@"Stack is Empty") : NSLog(@"Stack is not Empty");
        
        @try {
        for(int i=0 ;i<100;i++){
            
            [s push : [NSNumber numberWithInt:15+i*5]];
            
        }
            
        }
        @catch( NSException *exception){
            NSLog(@"%@: %@",exception.name,exception.reason);
            
        }
        
        NSLog(@"Stack s size is %d", [s sizeOf]);
         NSLog(@"%@",s);
		if ( [s search : k] < 0 )
			NSLog(@"Stack s does not contain element %@", k);
		else
			NSLog(@"Stack s contains element %@ at 1-based position  %d", k, [s search : k ]);
        @try {
            NSLog(@"Clearing Stack");
        
                [s clear];
            
            NSLog(@"Size of Stack s is : %d",[s sizeOf]);
            NSLog(@"Stack s popped element is : %@",[s pop]);
        }
        @catch(NSException *exception){
            
            NSLog(@"%@: %@",exception.name,exception.reason);
            
        }
      
    
        
        
    }
    return 0;
}

