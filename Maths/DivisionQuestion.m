//
//  DivisionQuestion.m
//  Maths
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

-(instancetype) init {
    if (self = [super init]){
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    super.question = [[NSString alloc] initWithFormat:@"%ld / %ld ?",(long)super.leftValue,super.rightValue];
    super.answer = super.leftValue / super.rightValue;
}

@end
