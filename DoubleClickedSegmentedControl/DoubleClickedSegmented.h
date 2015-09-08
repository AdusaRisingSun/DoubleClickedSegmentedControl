//
//  DoubleClickedSegmented.h
//  DoubleClickedSegmentedControl
//
//  Created by Adusa on 15/8/31.
//  Copyright (c) 2015年 Adusa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DoubleClickedSegmented;
@protocol DoubleClickedSegmentedDelegate <NSObject>
-(void)performSegmentAction:(DoubleClickedSegmented*)dcs;
@end

@interface DoubleClickedSegmented : UISegmentedControl
@property (nonatomic,weak)id<DoubleClickedSegmentedDelegate>tapDelegate;
@end
