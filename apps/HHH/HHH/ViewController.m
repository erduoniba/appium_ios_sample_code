//
//  ViewController.m
//  HHH
//
//  Created by denglibing on 2016/12/29.
//  Copyright © 2016年 denglibing. All rights reserved.
//

#import "ViewController.h"

#import "ViewController2.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbbb;
@property (weak, nonatomic) IBOutlet UIButton *bttt;
@property (weak, nonatomic) IBOutlet UITextField *textF1;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
//	[_lbbb setAccessibilityIdentifier:@"label"];
//	[_bttt setAccessibilityIdentifier:@"button"];
}

- (IBAction)changeLbText:(id)sender {
	_lbbb.text = @"appium test succeed";
    
    
}

- (IBAction)nextVC:(id)sender {
    [self presentViewController:[ViewController2 new] animated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
