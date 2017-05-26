//
//  ListCell.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 26..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "ListCell.h"

@interface ListCell ()

@property (weak, nonatomic) IBOutlet UIView *roundBackground;
@property (weak, nonatomic) IBOutlet UIImageView *ivProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcHeightOfUserProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcWidthOfUserProfile;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserName;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *alcTopOfUserBirth;

@end

@implementation ListCell

- (void)awakeFromNib
{
    [super awakeFromNib];
 
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.alcTopOfUserProfile.constant = WRATIO(16.0f);
    self.alcHeightOfUserProfile.constant = WRATIO(82.0f);
    self.alcWidthOfUserProfile.constant = WRATIO(82.0f);
    self.alcTopOfUserName.constant = WRATIO(16.0f);
    self.alcTopOfUserBirth.constant = WRATIO(8.0f);
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    self.roundBackground.layer.cornerRadius = WRATIO(10.0f);
    
    self.ivProfile.layer.cornerRadius = WRATIO(76.0f);
}


@end
