//
//  TicketViewController.h
//  LIAR
//
//  Created by Devon Ryan on 8/7/18.
//  Copyright © 2018 Devon Ryan. All rights reserved.
//

#ifndef TicketViewController_h
#define TicketViewController_h


#endif /* TicketViewController_h */


#import <UIKit/UIKit.h>
@interface TicketViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *leftColorLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleColorLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightColorLabel;

-(void)injectDataforLeft:(NSString *)leftData forMiddle:(NSString*)middleData forRight:(NSString*)rightData;

@end
