//
//  main.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        BOOL gameOn = true;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *manage = [[QuestionManager alloc] init];
        
        
        while(gameOn){
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", q1.question);
            
            NSString *answer = [InputHandler userInputandParse];
            
            q1.answer = [answer integerValue];
            if ([answer isEqualToString:@"quit"]){
                gameOn = false;
                continue;
            }
            [score scoreCount:[q1 evaluate]];
            NSLog(@"Right: %.0f, Wrong: %.0f ---- %.0f%%",score.right,score.wrong,((score.right/(score.right+score.wrong))*100));
            NSLog(@"You took %.2f seconds to answer.",q1.answerTime);
            [manage.questions addObject:q1];
            NSLog(@"%@",manage.timeOutput);
            
            
        }
    }
    return 0;
}
