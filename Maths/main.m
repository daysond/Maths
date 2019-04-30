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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Answer the questions or type \"quit\" to quit.");
//        AdditionQuestion* newgame = [[AdditionQuestion alloc] init];
//        int score = newgame.score;
        while (YES) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            NSLog(@"%@",question.question);
            NSString* answer = [InputHandler stringOutput];
            
            if (question.answer == [answer intValue]) {
                NSLog(@"Right! Your score is");
            } else if ([answer isEqualTo:@"quit"]) {
                break;
            } else {
                NSLog(@"Wrong!");
            }
        }

       
    }
    return 0;
}
