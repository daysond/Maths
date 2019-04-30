//
//  MathsGame.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "MathsGame.h"

@implementation MathsGame

-(NSString*) newQuestionWithLHS: (int) lhs andRHS: (int) rhs {
    
    NSString* question = [NSString stringWithFormat:@"%d + %d = ?",lhs, rhs];
    
    return question;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _score = 0;
    }
    return self;
}

@end
