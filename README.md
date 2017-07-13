# Water-wave-effect 
Water wave effect（水波动画效果）

Quartz-2D动画 练习，柔性美感的循环水波纹动画~

#### 主要功能代码：
```Objective-C
    // 获取视图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 可变路径
    CGMutablePathRef path = CGPathCreateMutable();
    // 填充颜色
    CGContextSetFillColorWithColor(context, [_color CGColor]);
    float y = 0;
    CGPathMoveToPoint(path, nil, 0, 0);
    
    for (float x = 0; x < self.frame.size.width; x++) {
        y = sin(x / 180 * M_PI + 4 * b / M_PI) * 5 + _pointY;
        CGPathAddLineToPoint(path, nil, x, y);
    }
    // 添加点
    CGPathAddLineToPoint(path, nil, self.frame.size.width, rect.size.height);
    CGPathAddLineToPoint(path, nil, 0, rect.size.height);
    CGPathAddLineToPoint(path, nil, 0, _pointY);
    
    CGContextAddPath(context, path); // 上下文
    CGContextFillPath(context); // 填充路径
    CGContextDrawPath(context, kCGPathStroke); // 绘制路径
    CGPathRelease(path);
```

效果截图：

![ABC](https://raw.githubusercontent.com/ReverseScale/Water-wave-effect/master/F1D19B3E-06A2-4A1E-842F-8270BC846C53.png)
