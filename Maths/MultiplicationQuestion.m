//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
        
    }
    return self;
}

-(void)generateQuestion {
    [super setQuestion:[NSString stringWithFormat:@"%ld * %ld = ?",(long)[super leftValue], (long)[super rightValue]]];
    [super setAnswer:[super rightValue] * [super leftValue]];
}

@end
