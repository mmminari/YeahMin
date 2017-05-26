//
//  AddFriendViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "AddFriendViewController.h"

@interface AddFriendViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfNaviBar;

@end

@implementation AddFriendViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setLayout];
    
}

- (void)setLayout
{
    self.alcHeightOfNaviBar.constant = WRATIO(80.0f);
    
}
#pragma mark - User Action
- (IBAction)didTouchBackButton:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}




@end
