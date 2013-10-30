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
    
    
    NSArray *arrname = [[NSArray alloc] initWithObjects:@"SAMenu 0", @"SAMenu 1", @"SAMenu 2", @"SAMenu 3", @"SAMenu 4", @"SAMenu 5", @"SAMenu 6", @"SAMenu 7", @"SAMenu 8", @"SAMenu 9",nil] ;
    
    
    NSArray *arrTitle = [[NSArray alloc] initWithObjects:@"SAMenuDescription 0", @"SAMenuDescription 1", @"SAMenuDescription 2", @"SAMenuDescription 3", @"SAMenuDescription 4", @"SAMenuDescription 5", @"SAMenuDescription 6", @"SAMenuDescription 7", @"SAMenuDescription 8", @"SAMenuDescription 9",nil] ;

    
    NSArray *arrImg = [[NSArray alloc] initWithObjects:@"10.png", @"11.png", @"12.png", @"13.png", @"14.png", @"15.png", @"16.png", @"17.png", @"18.png", @"19.png",nil] ;

    
    _menuDrop = [[SAMenuDropDown alloc] initWithWithSource:_btnSender menuHeight:160.0 itemNames:arrname itemImagesName:arrImg itemSubtitles:arrTitle];
    _menuDrop.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnShowMenu:(UIButton *)sender {
    
    if(!sender.selected) {
        [_menuDrop showSADropDownMenuWithAnimation:kSAMenuDropAnimationDirectionBottom];
        sender.selected = YES;
    }
    else {
        [_menuDrop hideSADropDownMenu];
        sender.selected = NO;
    }
    
    
}




- (void)saDropMenu:(SAMenuDropDown *)menuSender didClickedAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"\n\n##<<%@>>##", menuSender);
    
    NSLog(@"\n\n\nClicked \n\n<<Button#%i>>", buttonIndex);
}


@end






