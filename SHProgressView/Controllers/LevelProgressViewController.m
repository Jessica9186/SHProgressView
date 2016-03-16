//
//  LevelProgressViewController.m
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "LevelProgressViewController.h"
#import "LevelProgressView.h"
@interface LevelProgressViewController ()

@end

@implementation LevelProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"水平显示的进度条";
    self.view.backgroundColor = [UIColor whiteColor];
    
    LevelProgressView *progress = [[LevelProgressView alloc] initWithFrame:CGRectMake(50, 100, 350, 20)];
    progress.percent = 0.5;
//    progress.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:progress];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
