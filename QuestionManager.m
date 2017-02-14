//
//  QuestionManager.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-08.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Initialize property array
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *)timeOutput {
    
    int totalTime;
    
    // Iterate through questions array to calculate total time
    for(Question *currentQuestion in self.questions) {
        totalTime += [currentQuestion answerTime];
    }
    
    // Calculate average time
    int averageTime = totalTime / [self.questions count];
    
    // Build output string
    NSString *timeString = [NSString stringWithFormat:@"Total time: %ds, average time: %ds\n", totalTime, averageTime];
    
    return timeString;
    
    
    
}

@end
