//
//  AdditionQuestion.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init
{
    self = [super init];
    if (self) {
        int lhs = arc4random_uniform(90)+10;
        int rhs = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"%d + %d = ?",lhs,rhs];
        _startTime = [NSDate date];
        _answer = lhs + rhs;
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
    return answerTime;
}

@end
