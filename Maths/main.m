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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        BOOL gameOn = true;
        
        while(gameOn){
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", q1.question);
            
            NSString *answer = [InputHandler userInputandParse];
            
            q1.answer = [answer integerValue];
            
            [q1 evaluate];
            
            if ([answer isEqualToString:@"quit"]){
                gameOn = false;
            }
        }
    }
    return 0;
}
