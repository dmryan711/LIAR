//
//  SetUpViewController.h
//  LIAR
//
//  Created by Devon Ryan on 1/29/18.
//  Copyright © 2018 Devon Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetUpViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *leftColor;
@property (weak, nonatomic) IBOutlet UIPickerView *leftColorPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *middleColorPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *rightColorPicker;
@end

