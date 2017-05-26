//
//  MainCell.h
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainCellDelegate <NSObject>

- (void)didTouchLikeButtonAtIndex:(NSInteger)index;
- (void)didTouchAddTasteButtonAtIndex:(NSInteger)index;

@end

@interface MainCell : UICollectionViewCell

@property (weak, nonatomic) id<MainCellDelegate> delegate;
@property (assign, nonatomic) NSInteger cellIndex;


@end
