//
//  ViewController.m
//  HHH
//
//  Created by denglibing on 2016/12/29.
//  Copyright © 2016年 denglibing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbbb;
@property (weak, nonatomic) IBOutlet UIButton *bttt;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[_lbbb setAccessibilityIdentifier:@"label"];
	[_bttt setAccessibilityIdentifier:@"button"];
}

- (IBAction)changeLbText:(id)sender {
	_lbbb.text = @"appium test succeed";
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
