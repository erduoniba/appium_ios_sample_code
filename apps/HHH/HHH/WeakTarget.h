//
//  WeakTarget.h
//  HHH
//
//  Created by denglibing on 2017/1/6.
//  Copyright © 2017年 denglibing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeakTarget : NSObject

- (instancetype)initWithTarget:(id)target selector:(SEL)selector;

- (void)timerDidFire:(NSTimer *)timer;

@end
