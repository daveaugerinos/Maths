//
//  Question.h
//  Maths
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) float answer;
@property (nonatomic) NSString *question;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) float leftValue;
@property (nonatomic) float rightValue;

-(NSTimeInterval)answerTime;
-(void)generateQuestion;

@end
