//
//  DoubleClickedSegmented.m
//  DoubleClickedSegmentedControl
//
//  Created by Adusa on 15/8/31.
//  Copyright (c) 2015年 Adusa. All rights reserved.
//

#import "DoubleClickedSegmented.h"

@implementation DoubleClickedSegmented
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    if (self.tapDelegate) {
        [self.tapDelegate performSegmentAction:self];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
