//
//  Stack.m
//  Implementation of Stack Class
//
//  Created by Saurabh Gupta on 9/3/14.
//  Copyright (c) 2014 Saurabh Gupta. All rights reserved.
//


//  Saurabh Gupta
//  CIS 651
//  HW - 1

#import "Stack.h"
#import <Foundation/Foundation.h>

@implementation Stack

// Initializers
- (id)init
{
    self = [super init];
    if (self) {
        elements = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithSize : (int) sizeOfArray
{
    self = [super init];
    if (self) {
        elements = [[NSMutableArray alloc] initWithCapacity:sizeOfArray];
    }
    return self;
}

//Stack Operations

- (id) push : (id) item
{
    
    [elements addObject:item];
    return item;
    
}


- (id) pop
{
    id item = nil;
    NSException *myException = [NSException exceptionWithName:@"UnsupportedOperationException" reason:@"Tried to pop an empty stack" userInfo:nil]; // User defined exception in cases when user tries to pop an empty stack
    if ([self empty]){
        @throw myException;
      
    }
    
    item = [elements lastObject];
    
    [elements removeLastObject];
    return item;
    
    
}
-(id) peek
{
    id item = [elements lastObject];
    return item;
    
}



- (BOOL) empty

{
    if ([elements count]==0)
    {
        return TRUE;
    }
         return FALSE;
}


-(int) sizeOf
{

    int size = (int) [elements count];
    return size;
    
    
}



- (int) search: (id) item
{
        
    
    
    int size1 = (int) [elements count];
    for (int i = 0 ; i< size1; i++) {
        
        if ([elements objectAtIndex:i]==item)
            return i+1;
        
    }
    return -1;
    
    
}

-(void) clear
{
    [elements removeAllObjects];
    
}



//Stringization and I/O
-(NSString *) description

{
    
   NSString * retarr  = @"Elements of Stack are : ";
    int size = (int) [elements count];
    if (size==0){
        
        return @"Empty Stack!";
    }
    
    for (int i= 0; i<size; i++)
    {
       
      retarr = [retarr stringByAppendingString: [NSString stringWithFormat:@"%@ ",[elements objectAtIndex:i]]];
        
       
    }
    
    
    return retarr;
}

- (void) print
{
    NSLog(@"Elements in stack are : %@",elements);
}







@end
