//
//  InputHandler.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)stringOutput {
    char userAnswer[255];
    fgets(userAnswer, 255, stdin);
    NSString* userAnswerInString = [[NSString stringWithUTF8String:userAnswer] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userAnswerInString;
}

@end
