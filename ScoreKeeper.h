//
//  ScoreKeeper.h
//  Maths
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) int numOfCorrectAnswers;
@property (nonatomic) int numOfIncorrectAnswers;

-(NSString *)getTheScore;

@end
