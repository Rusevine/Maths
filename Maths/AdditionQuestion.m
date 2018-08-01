//
//  AdditionQuestion.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


-(instancetype) init {
    if (self = [super init]){
        number1 = arc4random_uniform(91)+10;
        number2 = arc4random_uniform(91)+10;
        _question = [NSString stringWithFormat:@"%d + %d ?", number1, number2];
        _startTime = [NSDate date];
    }
    return self;
}
-(BOOL)evaluate{
    if (self.answer == (number1+number2)){
        NSLog(@"Right!");
        return true;
    } else {
        NSLog(@"Wrong!");
        return false;
    }
}

-(NSInteger)answer {
    self.endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime{
    
    NSTimeInterval time = [self.endTime timeIntervalSinceDate:self.startTime];
    return time;
}
@end
