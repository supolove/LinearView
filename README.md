# LinearView
  在Android中使用LinearLayout很方便的对子视图做线性排版。在ios里面就没有这类似的容器。因此，本人自己简单封装了LinearView供大家方便的使用线性布局。
  
## LinearView使用方法
- 初始化LinearView 跟初始化普通视图类似
```Objective-C
LinearView *linearView = [[LinearView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
```

- 设置LinearView的方向，目前提供上下和左右方向，不设置默认是上下方向的
```Objective-C
linearView.orientation = LINEARVIEWORIENTATION_LEFTRIGHT;
```

- 添加视图，子视图只需设置大小，子视图可以不设置位置
```Objective-C
／*
  * 参数1 子视图，
  * 参数2，距离上个视图的高度
  *／
[linearView addSubview:view1 margin:10];
```

## ScrollLinearView使用方法
- 说明 在LinearView基础上添加了ScrollView的属性。
- 初始化，跟普通视图一样初始化
```objective-C
   ScrollLinearView *scrollLinearView = [[ScrollLinearView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
```

- 设置方向
```Objective-C
scrollLinearView.orientation = LINEARVIEWORIENTATION_LEFTRIGHT;
```
- 添加视图
```Objective-C
／*
  * 参数1 子视图，
  * 参数2，距离上个视图的高度
  *／
[scrollLinearView addSubview:view1 margin:10];
```
