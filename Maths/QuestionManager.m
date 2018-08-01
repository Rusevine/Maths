//
//  QuestionManager.m
//  Maths
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

-(instancetype) init {
    if(self = [super init]){
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString*) timeOutput {
    float totalTime = 0;
    float averageTime = 0;
    
    for (Question* question in _questions) {
        totalTime += question.answerTime;
    }
    
    averageTime = totalTime / [_questions count];
    
    NSString *output = [[NSString alloc] initWithFormat:@"total time: %.2fs average time: %.2fs",totalTime,averageTime];
    return output;
}
@end
