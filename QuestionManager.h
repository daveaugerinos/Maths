//
//  QuestionManager.h
//  Maths
//
//  Created by Dave Augerinos on 2017-02-08.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

// Properties

@property (nonatomic) NSMutableArray *questions;

// Method
-(NSString *)timeOutput;

@end
