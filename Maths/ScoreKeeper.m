//
//  ScoreKeeper.m
//  Maths
//
//  Created by Dayson Dong on 2019-04-30.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)calculateScore {
    
    float total = (float) (_right + _wrong);
    int percentage = (int) (((float) _right / total) * 100);

    return [NSString stringWithFormat:@"Right: %d, Wrong: %d --- %d%%",self.right,self.wrong,percentage];
}
@end
