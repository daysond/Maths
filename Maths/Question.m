//
//  Question.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "Question.h"

@implementation Question


- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(90)+10;
        _rightValue = arc4random_uniform(90)+10;
   
        _startTime = [NSDate date];
        _answer = _leftValue + _rightValue;
    }
    return self;
}

-(void)generateQuestion{
    
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
