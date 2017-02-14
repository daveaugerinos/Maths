//
//  QuestionFactory.h
//  Maths
//
//  Created by Dave Augerinos on 2017-02-08.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@interface QuestionFactory : NSObject

// Methods
-(Question *)generateRandomQuestion;

@end
