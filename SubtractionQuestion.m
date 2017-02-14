//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-08.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
  
    // Subtraction question and answer
    super.question = [NSString stringWithFormat:@"What is %.f - %.f?", super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
    
}

@end
