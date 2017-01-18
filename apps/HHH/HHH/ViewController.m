//
//  ViewController.m
//  HHH
//
//  Created by denglibing on 2016/12/29.
//  Copyright © 2016年 denglibing. All rights reserved.
//

#import "ViewController.h"

#import "ViewController2.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lbbb;
@property (weak, nonatomic) IBOutlet UIButton *bttt;
@property (weak, nonatomic) IBOutlet UITextField *textF1;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[_lbbb setAccessibilityIdentifier:@"label"];
	[_bttt setAccessibilityIdentifier:@"button"];
    _textF1.text = @"HHH";
    _textF1.delegate = self;
}

- (IBAction)changeLbText:(id)sender {
	_lbbb.text = @"appium test succeed";
    
    
}

- (IBAction)nextVC:(id)sender {
    [self presentViewController:[ViewController2 new] animated:YES completion:Nil];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
