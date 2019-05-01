//
//  QuestionManager.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput{
    
    NSTimeInterval total = 0;
    
    for (AdditionQuestion* question in _questions) {
        total += question.answerTime;
    }
    
    return [NSString stringWithFormat:@"total time: %ds, average time: %lus.",(int)total, (int)total/[_questions count]];
    
    return 0;
}

@end
