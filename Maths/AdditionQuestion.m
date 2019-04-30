//
//  AdditionQuestion.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(NSString*) newQuestionWithLHS: (int) lhs andRHS: (int) rhs {
    
    NSString* question = [NSString stringWithFormat:@"%d + %d = ?",lhs, rhs];
    
    return question;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _score = 0;
        int lhs = arc4random_uniform(10);
        int rhs = arc4random_uniform(10);
        _question = [NSString stringWithFormat:@"%d + %d",lhs,rhs];
        _answer = lhs + rhs;
    }
    return self;
}

@end
