//
//  QuestionFactory.m
//  Maths
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory

-(instancetype) init {
    if(self =[super init]){
        _questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}


-(Question*)generateRandomQuestion{
    int i = arc4random_uniform(4);
    
    Question *q = [[NSClassFromString(_questionSubclassNames[i]) alloc] init];
    
    return q;
}
@end
