//
//  ViewController.m
//  SHProgressView
//
//  Created by zxy on 16/3/16.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "ViewController.h"
#import "CircleViewController.h"
#import "CircleWithTextViewController.h"
#import "LevelProgressViewController.h"
#import "LevelWithTextViewController.h"
#import "SemiCircleViewController.h"
#import "SemiCircleWithTextViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.title = @"选择样式";
    
//    self.tableView.separatorColor = [UIColor cyanColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
        
        // 定义每行显示的内容
        if (indexPath.section == 0) {
            if (indexPath.row == 0) {
                cell.textLabel.text = @"环形显示的进度条";
            }else if (indexPath.row == 1){
                cell.textLabel.text = @"环形显示的进度条——文字";
            }else if (indexPath.row == 2){
                cell.textLabel.text = @"弧形显示的进度条";
            }else if (indexPath.row == 3){
                cell.textLabel.text = @"弧形显示的进度条——文字";
            }
        }
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            CircleViewController *circle = [[CircleViewController alloc] init];
            [self.navigationController pushViewController:circle animated:YES];
        }else if (indexPath.row == 1){
            CircleWithTextViewController *circleWithText = [[CircleWithTextViewController alloc] init];
            [self.navigationController pushViewController:circleWithText animated:YES];
        }else if (indexPath.row == 2){
            SemiCircleViewController *semiCircle = [[SemiCircleViewController alloc] init];
            [self.navigationController pushViewController:semiCircle animated:YES];
        }else if (indexPath.row == 3){
            SemiCircleWithTextViewController *semiCircleWithText = [[SemiCircleWithTextViewController alloc] init];
            [self.navigationController pushViewController:semiCircleWithText animated:YES];
        }
    }
}

@end
