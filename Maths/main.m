//
//  main.m
//  Maths
//
//  Created by Wiljay Flores on 2018-07-31.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true){
            char inputChar[255];
            
            fgets(inputChar, 255, stdin);
            
            NSString *inputString = [[NSString alloc] initWithCString:inputChar encoding:NSUTF8StringEncoding];
            
        }
    }
    return 0;
}
