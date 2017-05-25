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
    
    
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    self.profileView.layer.cornerRadius = WRATIO(90.0f) / 2;
    self.ivProfile.layer.cornerRadius = WRATIO(80.0f) / 2;
    
    self.ivTop.image = [UIImage imageNamed:@"maincard_shadow"];
    self.ivBackground.image = [UIImage imageNamed:@"maincard_topper"];
    
}

@end
