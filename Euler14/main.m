//
//  main.m
//  Euler14
//
//  Created by JohanLundgren on 2016-01-11.
//  Copyright © 2016 SuperMilkApps. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int counter = 0;
        int storst = 0;
        for (int i = 2; i < 1000000; i++) {
            while (i != 1) {
                if (i % 2 == 0) {
                    i = i / 2;
                    counter++;
                } else {
                    i = 3 * i + 1;
                    counter++;
                }
            }
            if (counter > storst) {
                storst = counter;
            }
            counter = 0;
        }
        NSLog(@"Den längsta kjedjan som kan fås fram är: %i", storst);
    }
    return 0;
}
