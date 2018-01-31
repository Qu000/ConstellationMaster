//
//  CMHomeViewController.m
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/30.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMHomeViewController.h"

#import "CMHomeTableViewCell.h"
#import "CMHomeHandler.h"

@interface CMHomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)NSArray *listArr;

@end

@implementation CMHomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    [self loadData];

}

- (void)setupUI{
    _listArr = [NSArray arrayWithObjects:@"banner",@"每日一测",@"文章推荐",@"视频推荐",@"test",@"test2", nil];
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 44, 0);
}
- (void)loadData{
    [CMHomeHandler executePostBannerTaskWithSuccess:^(id obj) {
        
        NSLog(@"%@",obj);
        
    } failed:^(id obj) {
        
        NSLog(@"%@",obj);
        
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _listArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CMHomeTableViewCell * cell = [CMHomeTableViewCell cellWithTableView:tableView];
    cell.backgroundColor = [UIColor purpleColor];
    cell.textLabel.text = _listArr[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    return 120;
}
@end
