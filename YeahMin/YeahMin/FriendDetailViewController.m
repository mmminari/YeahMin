//
//  FrientDetailViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "FriendDetailViewController.h"

@interface FriendDetailViewController ()

@end

@implementation FriendDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark - User Action
- (IBAction)didTouchBackButton:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
