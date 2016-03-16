//
//  LevelProgressView.m
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "LevelProgressView.h"
@interface LevelProgressView()
{
    CAShapeLayer *_bottomShapeLayer;
    CAShapeLayer *_upperShapeLayer;
    CGFloat _percent;
    CGFloat _lineWidth;
}
@end

@implementation LevelProgressView

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

/**
 *  底部浅灰色
 */
- (CAShapeLayer *)drawBottomLayer
{
    _bottomShapeLayer = [CAShapeLayer layer];
    _bottomShapeLayer.frame = self.bounds;
    
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.height / 2 ];
    
    _bottomShapeLayer.path = path.CGPath;
    _bottomShapeLayer.lineCap = kCALineCapRound;
    
    path.lineWidth = self.bounds.size.width;
    _bottomShapeLayer.strokeColor = [UIColor clearColor].CGColor;
    _bottomShapeLayer.fillColor = [UIColor lightGrayColor].CGColor;
    return _bottomShapeLayer;
    
}

/**
 *  上部显示蓝色
 */
- (CAShapeLayer *)drawUpperLayer
{
    _upperShapeLayer = [CAShapeLayer layer];
    _upperShapeLayer.frame = self.bounds;
    

    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.height / 2 ];
    
    _upperShapeLayer.path = path.CGPath;
    _upperShapeLayer.lineCap = kCALineCapRound;
    
    path.lineWidth = self.bounds.size.width;
    
    _upperShapeLayer.strokeStart = 0;
    _upperShapeLayer.strokeEnd =   0.5;
    
     [self performSelector:@selector(shapeChange) withObject:nil afterDelay:0.3];
    _upperShapeLayer.strokeColor = [UIColor clearColor].CGColor;
    _upperShapeLayer.fillColor = [UIColor greenColor].CGColor;
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
        _percent = 1;
    }else if (percent < 0){
        _percent = 0;
    }
    
}

- (void)shapeChange
{
    _upperShapeLayer.strokeEnd = _percent;
}
@end
