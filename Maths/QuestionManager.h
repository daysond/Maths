//
//  QuestionManager.h
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray* questions;

-(NSString*)timeOutput;
@end

NS_ASSUME_NONNULL_END
