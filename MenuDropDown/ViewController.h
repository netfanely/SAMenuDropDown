//
//  ViewController.h
//  MenuDropDown
//
//  Created by Satish K Azad on 30/10/13.
//  Copyright (c) 2013 SADropDown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SAMenuDropDown.h"

@interface ViewController : UIViewController<SAMenuDropDownDelegate>

@property (nonatomic, strong) SAMenuDropDown *menuDrop;

@property (weak, nonatomic) IBOutlet UIButton *btnSender;

- (IBAction)btnShowMenu:(UIButton *)sender;


@end
