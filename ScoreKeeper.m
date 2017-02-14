//
//  ScoreKeeper.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)getTheScore {
    
    NSString *myScore = [[NSString alloc] init];
    
    // Check if any questions have been answered - in case of early quit request
    if((_numOfCorrectAnswers + _numOfIncorrectAnswers) != 0) {
        
        // Calculate score percentage
        float scorePercentage = ((float)_numOfCorrectAnswers) / ((float)_numOfCorrectAnswers + (float)_numOfIncorrectAnswers);
        scorePercentage = scorePercentage * 100;
        
        // Build score string
        myScore = ([NSString stringWithFormat:@"Score: %d right, %d wrong ---- %.2f%%", _numOfCorrectAnswers, _numOfIncorrectAnswers, scorePercentage]);
        
    }
    
    return myScore;
}

@end
