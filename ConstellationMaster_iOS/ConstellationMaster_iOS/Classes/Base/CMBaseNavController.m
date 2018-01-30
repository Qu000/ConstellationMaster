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
    self.navigationBar.barTintColor = CMRGB(255, 213, 31);
    self.navigationBar.tintColor = [UIColor whiteColor];//(item上为白色)
}


//重写push，隐藏tabBar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
