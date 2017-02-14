//
//  Question.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Create two random operands between 10 and 100
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        
        // start timer
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion {

}

// Override getter for answer variable
-(float)answer {
 
    _endTime = [NSDate date];
    
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    // Calculate difference between start and end time
    NSTimeInterval timeInterval = [self.endTime timeIntervalSinceDate: self.startTime];
    
    return timeInterval;
}

@end
