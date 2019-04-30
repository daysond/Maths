//
//  main.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Answer the questions or type \"quit\" to quit.");
//        AdditionQuestion* newgame = [[AdditionQuestion alloc] init];
//        int score = newgame.score;
        while (YES) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            char userAnswer[255];
            
            NSLog(@"%@",question.question);
            
            fgets(userAnswer, 255, stdin);
            NSString* userAnswerInString = [[NSString stringWithUTF8String:userAnswer] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if (question.answer == [userAnswerInString intValue]) {
                
                NSLog(@"Right! Your score is");
            } else if ([userAnswerInString isEqualTo:@"quit"]) {
                break;
            } else {
                NSLog(@"Wrong!");
            }
        }

       
    }
    return 0;
}
