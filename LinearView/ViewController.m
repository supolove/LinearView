//
//  ViewController.m
//  LinearView
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "ViewController.h"
#import "LinearView.h"
#import "ScrollLinearView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LinearView *linearView = [[LinearView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:linearView];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    
    view1.backgroundColor = [UIColor yellowColor];
    view2.backgroundColor = [UIColor blueColor];
    view3.backgroundColor = [UIColor redColor];
    view4.backgroundColor = [UIColor grayColor];
    
    [linearView addSubview:view1 margin:10];
    NSLog(@"height = %f",[linearView getContentSize].height);
    [linearView addSubview:view2 margin:10];
    NSLog(@"height = %f",[linearView getContentSize].height);
    [linearView addSubview:view3 margin:15];
    NSLog(@"height = %f",[linearView getContentSize].height);
    [linearView addSubview:view4 margin:2];
    NSLog(@"height = %f",[linearView getContentSize].height);
    
    LinearView *linearView2 = [[LinearView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    [linearView addSubview:linearView2 margin:20];
    linearView2.orientation = LINEARVIEWORIENTATION_LEFTRIGHT;
    
    UIView *view11 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 60)];
    UIView *view22 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 60)];
    UIView *view33 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 60)];
    UIView *view44 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 60)];
    
    view11.backgroundColor = [UIColor redColor];
    view22.backgroundColor = [UIColor blackColor];
    view33.backgroundColor = [UIColor lightGrayColor];
    view44.backgroundColor = [UIColor yellowColor];
    
    [linearView2 addSubview:view11 margin:10];
    [linearView2 addSubview:view22 margin:20];
    [linearView2 addSubview:view33 margin:10];
    [linearView2 addSubview:view44 margin:10];
    
    
    
#pragma mark - scrollLinearView;
    
    
    ScrollLinearView *scrollLinearView = [[ScrollLinearView alloc] initWithFrame:CGRectMake(0, 350, self.view.frame.size.width, 350)];
    [self.view addSubview:scrollLinearView];
    
    UIView *sview1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UIView *sview2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 120)];
    UIView *sview3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
    UIView *sview4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    
    sview1.backgroundColor = [UIColor lightGrayColor];
    sview2.backgroundColor = [UIColor blueColor];
    sview3.backgroundColor = [UIColor redColor];
    sview4.backgroundColor = [UIColor grayColor];
    
    [scrollLinearView addSubview:sview1 margin:10];
    [scrollLinearView addSubview:sview2 margin:10];
    [scrollLinearView addSubview:sview3 margin:15];
    [scrollLinearView addSubview:sview4 margin:2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
