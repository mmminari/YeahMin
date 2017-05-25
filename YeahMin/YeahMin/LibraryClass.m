//
//  LibraryClass.m
//  YeahMin
//
//  Created by 김민아 on 2017. 5. 25..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "LibraryClass.h"
#import "MATools.h"

@interface LibraryClass ()

@end

@implementation LibraryClass

+ (instancetype)sharedInstance
{
    static LibraryClass *_sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryClass alloc] init];
        
    });
    
    return _sharedInstance;
}

@end
