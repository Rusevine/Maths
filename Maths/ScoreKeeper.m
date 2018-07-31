//
//  ScoreKeeper.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)scoreCount:(BOOL)score{
    if (score == true) {
        _right++;
    } else {
        _wrong++;
    }
}

@end
