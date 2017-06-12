//
//  ScrollLinearView.m
//  LinearView
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "ScrollLinearView.h"

@interface ScrollLinearView()
@property(nonatomic,strong)LinearView *linearView;
@end

@implementation ScrollLinearView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView{
    self.linearView = [[LinearView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [super addSubview:self.linearView];
}

-(void)setOrientation:(LinearViewOrientation) orientation{
    _orientation = orientation;
    self.linearView.orientation = orientation;
}


-(void)setContentSize:(CGSize)contentSize{
    [super setContentSize:contentSize];
}

-(void)addSubview:(UIView *)view{
    [self.linearView addSubview:view];
    self.contentSize = [self.linearView getContentSize];
}

-(void)addSubview:(UIView *)view margin:(CGFloat)margin{
    [self.linearView addSubview:view margin:margin];
    self.contentSize = [self.linearView getContentSize];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
