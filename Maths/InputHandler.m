//
//  InputHandler.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)userInputandParse{
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString *userAnswer = [[NSString alloc] initWithCString:inputChar encoding:NSUTF8StringEncoding];
    return [userAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
