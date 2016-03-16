//
//  SemiCircleWithTextProgressView.h
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SemiCircleWithTextProgressView : UIView

@property (nonatomic,assign) CGFloat percent;
@property (strong, nonatomic) UILabel *percentLabel;
@property (strong, nonatomic) NSTimer *timer;

@end
