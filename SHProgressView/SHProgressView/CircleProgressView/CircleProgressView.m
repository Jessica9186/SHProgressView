//
//  CircleProgressView.m
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "CircleProgressView.h"
@interface CircleProgressView()
{
    CAShapeLayer *_bottomShapeLayer;
    CAShapeLayer *_upperShapeLayer;
    CGFloat _percent;
}
@end
@implementation CircleProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        [self drawBottomLayer];
        [self drawUpperLayer];
        [self.layer addSublayer:_bottomShapeLayer ];
        
        [_bottomShapeLayer addSublayer:_upperShapeLayer];
        
    }
    return self;
}



- (CAShapeLayer *)drawBottomLayer
{
    _bottomShapeLayer                 = [[CAShapeLayer alloc] init];
    _bottomShapeLayer.frame           = self.bounds;
    CGFloat width                     = self.bounds.size.width;
    
    UIBezierPath *path                = [UIBezierPath bezierPathWithArcCenter:CGPointMake((CGRectGetMaxX(self.frame) - CGRectGetMinX(self.frame)) / 2, (CGRectGetMaxY(self.frame) - CGRectGetMinY(self.frame)) / 2)  radius:width / 2 startAngle:0 endAngle:6.28 clockwise:YES];
    _bottomShapeLayer.path            = path.CGPath;
    
//    _bottomShapeLayer.lineCap = kCALineCapButt;
//    _bottomShapeLayer.lineDashPattern = [NSArray arrayWithObjects:[NSNumber numberWithInt:5],[NSNumber numberWithInt:5], nil];
    
     _bottomShapeLayer.lineCap = kCALineCapSquare;
    
    _bottomShapeLayer.lineWidth = 15;
    _bottomShapeLayer.strokeColor     = [UIColor blackColor].CGColor;
    _bottomShapeLayer.fillColor       = [UIColor clearColor].CGColor;
    return _bottomShapeLayer;
}


- (CAShapeLayer *)drawUpperLayer
{
    _upperShapeLayer                 = [[CAShapeLayer alloc] init];
    _upperShapeLayer.frame           = self.bounds;
    CGFloat width                     = self.bounds.size.width;
    
    UIBezierPath *path                = [UIBezierPath bezierPathWithArcCenter:CGPointMake((CGRectGetMaxX(self.frame) - CGRectGetMinX(self.frame)) / 2, (CGRectGetMaxY(self.frame) - CGRectGetMinY(self.frame)) / 2)
                                                                       radius:width / 2   startAngle:-1.57
                                                                     endAngle:4.71
                                                                    clockwise:YES];
    _upperShapeLayer.path            = path.CGPath;
    _upperShapeLayer.strokeStart = 0;
    _upperShapeLayer.strokeEnd =   0;
    [self performSelector:@selector(shapeChange) withObject:nil afterDelay:0.3];
    _upperShapeLayer.lineWidth = 15;
    
//    _upperShapeLayer.lineCap = kCALineCapButt;
//    _upperShapeLayer.lineDashPattern = [NSArray arrayWithObjects:[NSNumber numberWithInt:5],[NSNumber numberWithInt:5], nil];
    
     _upperShapeLayer.lineCap = kCALineCapRound;
    
    _upperShapeLayer.strokeColor     = [UIColor redColor].CGColor;
    _upperShapeLayer.fillColor       = [UIColor clearColor].CGColor;
    return _upperShapeLayer;
}

@synthesize percent = _percent;
- (CGFloat )percent
{
    return _percent;
}
- (void)setPercent:(CGFloat)percent
{
    _percent = percent;
    
    if (percent > 1) {
        percent = 1;
    }else if (percent < 0){
        percent = 0;
    }
    
}

- (void)shapeChange
{
    _upperShapeLayer.strokeEnd = _percent;
}

@end
