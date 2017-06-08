//
//  MainViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "MainViewController.h"
#import "MainCell.h"
#import "AlarmViewController.h"
#import "FriendListViewController.h"
#import "YRCoverFlowLayout.h"



@interface MainViewController () <MainCellDelegate>

@property (weak, nonatomic) IBOutlet UIPageControl *pageController;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfNaviBar;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcLeadingOfAlarm;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfAlarm;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfAlarm;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfMenu;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfMenu;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTrailingOfMenu;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfLogo;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfLogo;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfPageController;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setLayout];
    
    self.pageController.numberOfPages = 5;
    
    self.navigationController.navigationBarHidden = YES;
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"MainCell" bundle:nil] forCellWithReuseIdentifier:@"MainCell"];

}

#pragma mark - Private Method

- (void)setLayout
{
    self.alcHeightOfNaviBar.constant = WRATIO(80.0f);
    self.alcTopOfCollectionView.constant = WRATIO(30.0f);
    self.alcHeightOfCollectionView.constant = WRATIO(462.0f);
    self.alcLeadingOfAlarm.constant = WRATIO(57.0f);
    self.alcHeightOfAlarm.constant = WRATIO(20.0f);
    self.alcWidthOfAlarm.constant = WRATIO(17.0f);
    self.alcHeightOfMenu.constant = WRATIO(16.0f);
    self.alcWidthOfMenu.constant = WRATIO(16.0f);
    self.alcTrailingOfMenu.constant = WRATIO(57.0f);
    self.alcHeightOfLogo.constant = WRATIO(15.0f);
    self.alcWidthOfLogo.constant = WRATIO(60.0f);
    self.alcTopOfPageController.constant = WRATIO(44.0f);
}


#pragma mark - User Action

- (IBAction)touchedAlarmButton:(UIButton *)sender
{
    [self.sideMenu showLeftViewAnimated:YES completionHandler:nil];
}

- (IBAction)touchedListButton:(UIButton *)sender
{
    FriendListViewController *listVC = [self.storyboard instantiateViewControllerWithIdentifier:@"stid-FriendListVC"];
    
    [self.navigationController pushViewController:listVC animated:YES];
}

#pragma mark - UICollectionView

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger result = 0;
    
    result = 5;
    
    return result;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MainCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainCell" forIndexPath:indexPath];

    cell.cellIndex = indexPath.item;
    cell.delegate = self;
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize result = CGSizeZero;
    
    result = CGSizeMake(DEVICE_WIDTH, WRATIO(462.0f));
    
    collectionView.contentSize = result;
    
    return result;
}

#pragma mark - UIScrollView
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / DEVICE_WIDTH;
    
    self.pageController.currentPage = index;
}

#pragma mark - MainCellDelegate
- (void)didTouchLikeButtonAtIndex:(NSInteger)index
{
    NSLog(@"didTouchLikeButtonAtIndex : %zd", index);
}

- (void)didTouchAddTasteButtonAtIndex:(NSInteger)index
{
    NSLog(@"didTouchAddTasteButtonAtIndex : %zd", index);
}


@end
