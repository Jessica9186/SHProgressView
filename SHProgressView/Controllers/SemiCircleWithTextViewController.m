//
//  SemiCircleWithTextViewController.m
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "SemiCircleWithTextViewController.h"
#import "SemiCircleWithTextProgressView.h"


@interface SemiCircleWithTextViewController ()

@end

@implementation SemiCircleWithTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"弧形显示的进度条——文字";
    self.view.backgroundColor = [UIColor whiteColor];
    
    SemiCircleWithTextProgressView *progress = [[SemiCircleWithTextProgressView alloc] initWithFrame:CGRectMake(50, 100, 300, 300)];
    progress.percent = 0.80;
    [self.view addSubview:progress];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
