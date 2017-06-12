//
//  LinearView.h
//  LinearView
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, LinearViewOrientation) {
    LINEARVIEWORIENTATION_UPDOWN,
    LINEARVIEWORIENTATION_LEFTRIGHT
};

@interface LinearView : UIView
@property(nonatomic,assign)LinearViewOrientation orientation;
-(void)addSubview:(UIView *)view margin:(CGFloat)margin;
-(CGSize)getContentSize;
@end
