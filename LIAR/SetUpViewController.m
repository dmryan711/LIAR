//
//  SetUpViewController.m
//  LIAR
//
//  Created by Devon Ryan on 1/29/18.
//  Copyright © 2018 Devon Ryan. All rights reserved.
//

#import "SetUpViewController.h"
#import "TicketViewController.h"

#define LEFT_PICKER_TAG 0
#define MIDDLE_PICKER_TAG 1
#define RIGHT_PICKER_TAG 2
#define FIRST_COLOR @"Red"


@interface SetUpViewController ()
{
    NSArray *_colorData;
    NSString *_left;
    NSString *_middle;
    NSString *_right;
}




@end



@implementation SetUpViewController

#pragma mark LifeCyle Events
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Create Data
    _colorData = @[@"Red", @"Yellow", @"Green", @"Blue"];
    
    //Set Defaults for Injection
    _left = FIRST_COLOR;
    _middle = FIRST_COLOR;
    _right = FIRST_COLOR;
    
    //Connect Data
    _leftColorPicker.delegate = self;
    _leftColorPicker.dataSource = self;
    _middleColorPicker.delegate = self;
    _middleColorPicker.dataSource = self;
    _rightColorPicker.delegate = self;
    _rightColorPicker.dataSource = self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
// Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"Create Ticket"])
    {
        // Get reference to the destination view controller
         TicketViewController *tc = [segue destinationViewController];
        
        // Inject data for Segue
        [tc injectDataforLeft:_left forMiddle:_middle forRight:_right];
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Used Delegate / Data Source Methods
// The data to return for the row and component (column) that's being passed in

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //Pass Values to be transfered on Segue
    if (pickerView.tag == LEFT_PICKER_TAG)
        _left = _colorData[row];
    if (pickerView.tag == MIDDLE_PICKER_TAG)
        _middle = _colorData[row];
    if (pickerView.tag == RIGHT_PICKER_TAG)
        _right = _colorData[row];
    
    
}

// The data to return for the row and component (column) that's being passed in
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
   
    return _colorData[row];
}

//Number of Rows
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _colorData.count;
}

//Number of Columns
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

#pragma mark Unused Delegate / Data Source Methods

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return 200;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 50;
}

@end
