//
//  Question.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSInteger answer;
@property (nonatomic,strong) NSString* question;
@property (nonatomic,strong) NSDate* startTime;
@property (nonatomic,strong) NSDate* endTime;
@property NSInteger leftValue;
@property NSInteger rightValue;

-(NSTimeInterval)answerTime;
-(void)generateQuestion;
@end

NS_ASSUME_NONNULL_END
