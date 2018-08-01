//
//  AdditionQuestion.h
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject {
    int number1;
    int number2;
}

@property (nonatomic, assign) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, assign) NSDate *startTime;
@property (nonatomic, assign) NSDate *endTime;


-(BOOL)evaluate;

@end
