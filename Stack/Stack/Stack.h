//
//  Stack.h
//  Stack Class Interface
//
//  Created by Saurabh Gupta on 9/3/14.
//  Copyright (c) 2014 Saurabh Gupta. All rights reserved.


//  Saurabh Gupta
//  CIS 651
//  HW - 1

#ifndef Stack_Stack_h
#define Stack_Stack_h






@interface Stack : NSObject
{
    //Data
    NSMutableArray *elements;
}
    //constructors
    -(id) init;
    - (id)initWithSize : (int) sizeOfArray;

    //stack operations
    -(id) push : (id) item;
    -(id) pop ;
    -(id) peek;
    -(int) search : (id) item;
    -(BOOL) empty ;
    -(int) sizeOf;
    -(void) clear;

    // string-ization and I/O
    -(NSString *) description;
    -(void) print;



@end
#endif


