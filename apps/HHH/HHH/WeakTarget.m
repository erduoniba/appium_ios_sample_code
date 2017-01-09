//
//  WeakTarget.m
//  HHH
//
//  Created by denglibing on 2017/1/6.
//  Copyright © 2017年 denglibing. All rights reserved.
//

#import "WeakTarget.h"

@implementation WeakTarget
{
    __weak id targ;
    SEL sel;
}

- (instancetype)initWithTarget:(id)target selector:(SEL)selector{
    self = [super init];
    if (self) {
        targ = target;
        sel = selector;
    }
    return self;
}

- (void)timerDidFire:(NSTimer *)timer
{
    if(targ)
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [targ performSelector:sel withObject:timer];
#pragma clang diagnostic pop
    }
    else
    {
        [timer invalidate];
    }
}

@end
