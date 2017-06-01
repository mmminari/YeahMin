//
//  FrientDetailViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "FriendDetailViewController.h"

@interface FriendDetailViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfNaviBar;
@property (weak, nonatomic) IBOutlet UILabel *lbProfile;

@end

@implementation FriendDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setLayout];
    
}

- (void)setLayout
{
    self.alcHeightOfNaviBar.constant = WRATIO(80.0f);
    
    
    self.lbProfile.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:WRATIO(10.0f)];
    
}

#pragma mark - User Action
- (IBAction)didTouchBackButton:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
