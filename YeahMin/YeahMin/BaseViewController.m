//
//  BaseViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 26..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "BaseViewController.h"
#import "AlarmViewController.h"
#import "MainViewController.h"


@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    MainViewController *mainVC = [self.storyboard instantiateViewControllerWithIdentifier:@"stid-MainVC"];
    
    AlarmViewController *alarmVC = [[AlarmViewController alloc]initWithNibName:@"AlarmViewController" bundle:nil];
    
    mainVC.sideMenu = self;
    
    self.rootViewController = mainVC;
    self.leftViewController = alarmVC;
    self.leftViewWidth = 250.0f;
    
    self.leftViewPresentationStyle = LGSideMenuPresentationStyleSlideBelow;
}

@end
