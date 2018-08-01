//
//  QuestionManager.h
//  Maths
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "AdditionQuestion.h"

@interface QuestionManager : NSObject


@property (nonatomic) NSMutableArray *questions;

-(NSString*) timeOutput;

@end
