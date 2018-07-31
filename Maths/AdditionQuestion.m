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
    }
    return self;
}
-(void)evaluate{
    if (self.answer == (number1+number2)){
        NSLog(@"Right!");
    } else {
        NSLog(@"Wrong!");
    }
}
@end
