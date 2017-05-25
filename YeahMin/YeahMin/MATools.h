//
//  MATools.h
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DEVICE_WIDTH                                                [UIScreen mainScreen].bounds.size.width
#define STANDARD_DEVICE_WIDTH                                       414.0f
#define WRATIO(w)                                                   (w/3.0f) / STANDARD_DEVICE_WIDTH * DEVICE_WIDTH

#define DEVICE_HEIGHT                                               [UIScreen mainScreen].bounds.size.height
#define STANDARD_DEVICE_HEIGHT                                      736.0f
#define HRATIO(h)                                                   (h/3.0f) / STANDARD_DEVICE_HEIGHT * DEVICE_HEIGHT

@interface MATools : NSObject




@end
