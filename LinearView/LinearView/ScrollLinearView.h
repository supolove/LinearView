//
//  ScrollLinearView.h
//  LinearView
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LinearView.h"

//依赖LinearView
@interface ScrollLinearView : UIScrollView
@property(nonatomic,assign)LinearViewOrientation orientation;
-(void)addSubview:(UIView *)view;
-(void)addSubview:(UIView *)view margin:(CGFloat)margin;
@end
