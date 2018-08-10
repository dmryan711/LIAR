//
//  TicketViewController.m
//  LIAR
//
//  Created by Devon Ryan on 8/7/18.
//  Copyright © 2018 Devon Ryan. All rights reserved.
//

#import "TicketViewController.h"

@interface TicketViewController ()
{
    NSString *left;
    NSString *middle;
    NSString *right;
}




@end



@implementation TicketViewController

#pragma mark LifeCyle Events
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden = NO;
    _leftColorLabel.text = left;
    _middleColorLabel.text = middle;
    _rightColorLabel.text = right;
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Data Injection
-(void)injectDataforLeft:(NSString *)leftData forMiddle:(NSString*)middleData forRight:(NSString*)rightData{
    left = leftData;
    middle = middleData;
    right = rightData;
}

@end
