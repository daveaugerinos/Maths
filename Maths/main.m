//
//  main.m
//  Maths
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerInput.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Boolean to control loop
        BOOL runLoop = true;
        
        // Track player score
        ScoreKeeper *myScore = [[ScoreKeeper alloc]init];
        
        // Track player time
        QuestionManager *questionArray = [[QuestionManager alloc] init];
        
        // To create random questions
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        // Print greeting and request
        NSLog(@"Welcome to Maths!\n");
        
        // Start operations loop
        while (runLoop) {
            
            // Ask player if they would like to play a game
            NSLog(@"Type quit to exit:\n");
            
            // Pose a random math question
            Question *theQuestion = [questionFactory generateRandomQuestion];
            NSLog(@"%@", theQuestion.question);
            
            // Add question for timer
            [questionArray.questions addObject:theQuestion];
            
            // Read player answer
            NSString *answerString = [PlayerInput readPlayerInput];

            // Check is using wants to quit playing
            if ([answerString isEqualToString:@"quit"]){
                NSLog(@"%@", [myScore getTheScore]);
                NSLog(@"%@", [questionArray timeOutput]);
                printf("Thanks for playing!\n");
                runLoop = false;
            }
            
            // Otherwise check answer
            else {
                // Convert anser to integer, check answer for correctness, output feedback
                float playerAnswer = [answerString floatValue];
                
                if(playerAnswer == theQuestion.answer) {
                    myScore.numOfCorrectAnswers = myScore.numOfCorrectAnswers + 1;
                    NSLog(@"Great Work!");

                }
                else {
                    myScore.numOfIncorrectAnswers = myScore.numOfIncorrectAnswers + 1;
                    NSLog(@"Try Again!");
                    NSLog(@"Correct answer is: %f", theQuestion.answer);
                }
                
                // Log current score and time stats
                NSLog(@"%@", [myScore getTheScore]);
                NSLog(@"%@", [questionArray timeOutput]);
                
            }

            // continue in while loop
            continue;

        }
        
    }
    return 0;
}
