//
//  QuestionFactory.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubClassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

-(NSString *)generateRadomQuestion{
    int i = arc4random_uniform(4);
    return  _questionSubClassNames[i];
}

@end
