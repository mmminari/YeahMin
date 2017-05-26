//
//  FrientListViewController.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "FriendListViewController.h"
#import "ListCell.h"

#define CELL_MARGIN                                             20.0f

@interface FriendListViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfNaviBar;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcLeadingOfCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcBottomOfCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTrailingOfCollectionView;

@end

@implementation FriendListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setLayout];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"ListCell" bundle:nil] forCellWithReuseIdentifier:@"ListCell"];
    
    

}

- (void)setLayout
{
    self.alcHeightOfNaviBar.constant = WRATIO(80.0f);
    self.alcTopOfCollectionView.constant = WRATIO(20.0f);
    self.alcLeadingOfCollectionView.constant = WRATIO(CELL_MARGIN);
    self.alcBottomOfCollectionView.constant = WRATIO(CELL_MARGIN);
    self.alcTrailingOfCollectionView.constant = WRATIO(CELL_MARGIN);
    
}

#pragma mark - User Action

- (IBAction)touchedBackButton:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
    ListCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ListCell" forIndexPath:indexPath];
    
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize result = CGSizeZero;
    
    CGFloat cellWidth = (DEVICE_WIDTH - CELL_MARGIN * 3) / 2;
    
    result = CGSizeMake(cellWidth, WRATIO(189.0f));
    
    return result;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    CGFloat result = 0.0f;
    
    result = CELL_MARGIN;
    
    return result;
}

@end
