//
//  LinearView.m
//  LinearView
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "LinearView.h"

@interface LinearView()
@property(nonatomic,strong)NSMutableArray<UIView*> *viewBox;
@property(nonatomic,assign)CGFloat startMargin;
@end

@implementation LinearView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self initView:frame];
    }
    return self;
}

-(void)initView:(CGRect)frame{
    self.startMargin = 0;
    self.viewBox = [[NSMutableArray alloc] init];
    self.orientation = LINEARVIEWORIENTATION_UPDOWN;//默认是上下方向
}

-(void)setOrientation:(LinearViewOrientation) orientation{
    _orientation = orientation;
}


-(void)addSubview:(UIView *)view{
    [self addSubview:view margin:1];
}

-(void)addSubview:(UIView *)view margin:(CGFloat)margin{
    
    CGRect viewFrame;
    if (self.viewBox.count > 0) {
        UIView *lastView = [self.viewBox lastObject];
        viewFrame = view.frame;
        if (self.orientation == LINEARVIEWORIENTATION_UPDOWN)
            viewFrame.origin.y = lastView.frame.origin.y + lastView.frame.size.height + margin;
        else
            viewFrame.origin.x = lastView.frame.origin.x + lastView.frame.size.width + margin;
        view.frame = viewFrame;
    }else{
        self.startMargin = margin;
        viewFrame = view.frame;
        if (self.orientation == LINEARVIEWORIENTATION_UPDOWN)
            viewFrame.origin.y = margin;
        else
            viewFrame.origin.x = margin;
        view.frame = viewFrame;
    }
    
    [super addSubview:view];
    [self.viewBox addObject:view];
}

-(void)addSubview:(UIView *)view marginLeft:(CGFloat)marginLeft marginRight:(CGFloat)marginRight{

}

-(void)addSubview:(UIView *)view marginTop:(CGFloat)marginTop marginBottom:(CGFloat)marginBottom{
    
}

//主要是计算布局方向内容大小
-(CGSize)getContentSize{
    CGSize size = self.frame.size;
    if(self.viewBox.count > 0){
        if(self.orientation == LINEARVIEWORIENTATION_UPDOWN){
            UIView *lastView = [self.viewBox lastObject];
            size.height = lastView.frame.origin.y + lastView.frame.size.height;
        }
        return size;
    }else{
        return CGSizeZero;
    }

}

- (void)dealloc
{
    [self.viewBox removeAllObjects];
    self.viewBox = nil;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
