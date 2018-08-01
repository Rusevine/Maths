//
//  Question.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Question.h"

@implementation Question


-(instancetype) init {
    if (self = [super init]){
        _leftValue = arc4random_uniform(91)+10;
        _rightValue = arc4random_uniform(91)+10;
        _startTime = [NSDate date];
    }
    return self;
}


-(NSInteger)userAnswer {
    self.endTime = [NSDate date];
    return _userAnswer;
}

-(NSTimeInterval)answerTime{
    
    NSTimeInterval time = [self.endTime timeIntervalSinceDate:self.startTime];
    return time;
}

-(void) generateQuestion{
    
}

@end
