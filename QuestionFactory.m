//
//  QuestionFactory.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-08.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion {

    // Array of Question subclass names
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    
    // Pick a random subclass name
    NSString *className = questionSubclassNames[arc4random_uniform(4)];
    
    // Create a random Question based on random subclass name
    Question *randomQuestion = [[NSClassFromString(className) alloc] init];
    
    return randomQuestion;
}

@end
