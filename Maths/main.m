//
//  main.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Answer the questions or type \"quit\" to quit.");
        ScoreKeeper* score = [[ScoreKeeper alloc] init];
        QuestionManager* questionManager = [[QuestionManager alloc]init];
        while (YES) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            [questionManager.questions addObject:question];
            NSLog(@"%@",question.question);
            NSString* answer = [InputHandler stringOutput];
            
            if (question.answer == [answer intValue]) {
                score.right++;
                NSLog(@"Right!");
                NSLog(@"%@\n%@", [score calculateScore],[questionManager timeOutput]);
            } else if ([answer isEqualTo:@"quit"]) {
                
                break;
            } else {
                score.wrong++;
                NSLog(@"Wrong!");
                NSLog(@"%@\n%@", [score calculateScore],[questionManager timeOutput]);
            }
        }

       
    }
    return 0;
}
