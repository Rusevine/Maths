//
//  ScoreKeeper.h
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) float right;
@property (nonatomic, assign) float wrong;

-(void)scoreCount:(BOOL)score;

@end
