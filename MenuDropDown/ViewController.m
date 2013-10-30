//
//  ViewController.m
//  MenuDropDown
//
//  Created by Satish K Azad on 30/10/13.
//  Copyright (c) 2013 SADropDown. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  menuDrop = _menuDrop;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *arrname = [[NSArray alloc] initWithObjects:@"Hello 0", @"Hello 1", @"Hello 2", @"Hello 3", @"Hello 4", @"Hello 5", @"Hello 6", @"Hello 7", @"Hello 8", @"Hello 9",nil] ;
    
    
    NSArray *arrTitle = [[NSArray alloc] initWithObjects:@"Title 0", @"Title 1", @"Title 2", @"Title 3", @"Title 4", @"Title 5", @"Title 6", @"Title 7", @"Title 8", @"Title 9",nil] ;

    
    NSArray *arrImg = [[NSArray alloc] initWithObjects:@"Title 0", @"Title 1", @"Title 2", @"Title 3", @"Title 4", @"Title 5", @"Title 6", @"Title 7", @"Title 8", @"Title 9",nil] ;

    
    _menuDrop = [[SAMenuDropDown alloc] initWithWithSource:_btnSender menuHeight:160.0 itemNames:arrname itemImagesName:nil itemSubtitles:arrTitle];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnShowMenu:(UIButton *)sender {
    
    if(!sender.selected) {
        [_menuDrop showSADropDownMenuWithAnimation:kSAMenuDropAnimationDirectionTop];
        sender.selected = YES;
    }
    else {
        [_menuDrop hideSADropDownMenu];
        sender.selected = NO;
    }
    
    
}
@end
