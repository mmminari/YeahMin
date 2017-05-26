//
//  MainCell.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "MainCell.h"

@interface MainCell ()

// property
@property (weak, nonatomic) IBOutlet UIImageView *ivTop;
@property (weak, nonatomic) IBOutlet UIImageView *ivBackground;
@property (weak, nonatomic) IBOutlet UIView *profileView;
@property (weak, nonatomic) IBOutlet UIImageView *ivProfile;
@property (weak, nonatomic) IBOutlet UIImageView *ivUserBackground;
@property (weak, nonatomic) IBOutlet UILabel *lbUserName;
@property (weak, nonatomic) IBOutlet UILabel *lbUserBirth;
@property (weak, nonatomic) IBOutlet UILabel *lbSsh;
@property (weak, nonatomic) IBOutlet UILabel *lbSShCount;
@property (weak, nonatomic) IBOutlet UILabel *lbTaste;
@property (weak, nonatomic) IBOutlet UILabel *lbTasteCount;
@property (weak, nonatomic) IBOutlet UILabel *lbContact;
@property (weak, nonatomic) IBOutlet UILabel *lbContactCount;
@property (weak, nonatomic) IBOutlet UILabel *lbAddTaste;

// Alc
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfSubView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfSubView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfIvTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfIvBackground;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfProfileView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfProfileView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTrailingOfIvProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcLeadingOfIvProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfIvProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcBottomOfIvProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfLikeIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTrailingOfLikeIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfLikeIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfLikeIcon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserName;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserBirth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserDetail;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfUserDetailContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfUSerDetailContianer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfInnerContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfAddbutton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfAddButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfAddButton;



@end

@implementation MainCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.alcHeightOfSubView.constant = WRATIO(462.0f);
    self.alcWidthOfSubView.constant = WRATIO(300.0f);
    self.alcHeightOfIvTop.constant = WRATIO(25.0f);
    self.alcHeightOfIvBackground.constant = WRATIO(171.0f);
    self.alcHeightOfProfileView.constant = WRATIO(90.0f);
    self.alcWidthOfProfileView.constant = WRATIO(90.0f);
    self.alcTopOfIvProfile.constant = WRATIO(5.0f);
    self.alcLeadingOfIvProfile.constant = WRATIO(5.0f);
    self.alcBottomOfIvProfile.constant = WRATIO(5.0f);
    self.alcTrailingOfIvProfile.constant = WRATIO(5.0f);
    self.alcTopOfLikeIcon.constant = WRATIO(16.0f);
    self.alcTrailingOfLikeIcon.constant = WRATIO(16.0f);
    self.alcWidthOfLikeIcon.constant = WRATIO(25.0f);
    self.alcHeightOfLikeIcon.constant = WRATIO(25.0f);
    self.alcTopOfUserName.constant = WRATIO(70.0f);
    self.alcTopOfUserBirth.constant = WRATIO(5.0f);
    self.alcTopOfUserDetail.constant = WRATIO(33.0f);
    self.alcHeightOfUserDetailContainer.constant = WRATIO(33.0f);
    self.alcWidthOfUSerDetailContianer.constant = WRATIO(152.0f);
    self.alcWidthOfInnerContainer.constant = WRATIO(50.0f);
    self.alcTopOfAddbutton.constant = WRATIO(40.0f);
    self.alcHeightOfAddButton.constant = WRATIO(30.0f);
    self.alcWidthOfAddButton.constant = WRATIO(108.0f);
    
    
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    self.profileView.layer.cornerRadius = WRATIO(90.0f) / 2;
    self.ivProfile.layer.cornerRadius = WRATIO(80.0f) / 2;
    
    self.ivTop.image = [UIImage imageNamed:@"maincard_shadow"];
    self.ivBackground.image = [UIImage imageNamed:@"maincard_topper"];
    
}

#pragma mark - MainCellDelegate

- (IBAction)didTouchLikeButton:(UIButton *)sender
{   
    if([self.delegate respondsToSelector:@selector(didTouchLikeButtonAtIndex:)])
    {
        [self.delegate didTouchLikeButtonAtIndex:self.cellIndex];
    }
}

- (IBAction)didTouchAddTasteButton:(UIButton *)sender
{
    if([self.delegate respondsToSelector:@selector(didTouchAddTasteButtonAtIndex:)])
    {
        [self.delegate didTouchAddTasteButtonAtIndex:self.cellIndex];
    }
}

#pragma mark - Public Method






@end
