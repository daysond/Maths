//
//  AdditionQuestion.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property int score;
@property NSInteger answer;
@property NSString* question;


-(NSString*) newQuestionWithLHS: (int) lhs andRHS: (int) rhs;

@end

NS_ASSUME_NONNULL_END
