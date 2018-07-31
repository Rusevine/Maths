//
//  main.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        BOOL gameOn = true;
        
        while(gameOn){
            char inputChar[255];
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", q1.question);
            
            fgets(inputChar, 255, stdin);
            
            NSString *userAnswer = [[NSString alloc] initWithCString:inputChar encoding:NSUTF8StringEncoding];
            userAnswer = [userAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            q1.answer = [userAnswer integerValue];
            
            [q1 evaluate];
            
            if ([userAnswer isEqualToString:@"quit"]){
                gameOn = false;
            }
        }
    }
    return 0;
}
