//
//  ViewController2.m
//  HHH
//
//  Created by denglibing on 2017/1/6.
//  Copyright © 2017年 denglibing. All rights reserved.
//

#import "ViewController2.h"

#import "WeakTarget.h"

@interface ViewController2 ()

@property (nonatomic, strong) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UIScrollView *ssss;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _ssss.contentSize = CGSizeMake(1000, 1000);
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:[[WeakTarget alloc] initWithTarget:self selector:@selector(update)] selector:@selector(timerDidFire:) userInfo:nil repeats:YES];
}

- (void)update{
    NSLog(@"xxxxx");
}

- (IBAction)retureVC:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
