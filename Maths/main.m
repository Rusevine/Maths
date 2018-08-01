//
//  main.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        BOOL gameOn = true;
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *manage = [[QuestionManager alloc] init];
        QuestionFactory *factory = [[QuestionFactory alloc] init];
        
        
        
        while(gameOn){
            
            Question *q = factory.generateRandomQuestion;
            NSLog(@"%@",q.question);
            
            NSString *answer = [InputHandler userInputandParse];
            q.userAnswer = [answer integerValue];
            
            if ([answer isEqualToString:@"quit"]){
                gameOn = false;
                continue;
            } else if (q.answer == q.userAnswer ) {
                NSLog(@"%@",right);
                [score scoreCount:true];
            } else {
                NSLog(@"%@",wrong);
                [score scoreCount:false];
            }
            
            NSLog(@"Right: %.0f, Wrong: %.0f ---- %.0f%%",score.right,score.wrong,((score.right/(score.right+score.wrong))*100));
            NSLog(@"You took %.2f seconds to answer.",q.answerTime);
            [manage.questions addObject:q];
            NSLog(@"%@",manage.timeOutput);
            
            
        }
    }
    return 0;
}
