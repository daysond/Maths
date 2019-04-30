//
//  main.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathsGame.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Answer the questions or type \"quit\" to quit.");
        MathsGame* newgame = [[MathsGame alloc] init];
        int score = newgame.score;
        while (YES) {
            int lhs = arc4random_uniform(9);
            int rhs = arc4random_uniform(9);
            int answer = lhs + rhs;
            char userAnswer[255];
            NSLog(@"%@", [newgame newQuestionWithLHS:lhs andRHS:rhs]);
            fgets(userAnswer, 255, stdin);
            if (answer == [[NSString stringWithUTF8String:userAnswer] intValue]) {
                score += 10;
                NSLog(@"Right! Your score is %d",score);
            } else if ([[NSString stringWithUTF8String:userAnswer] isEqualTo:@"quit\n"]) {
                break;
            } else {
                NSLog(@"Wrong!");
            }
        }
       
    }
    return 0;
}
