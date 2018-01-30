//
//  CMBaseNavController.m
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/30.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMBaseNavController.h"

@interface CMBaseNavController ()

@end

@implementation CMBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //导航栏颜色
    self.navigationBar.barTintColor = CMRGB(0, 216, 201);
    self.navigationBar.tintColor = [UIColor whiteColor];//(item上为白色)
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
