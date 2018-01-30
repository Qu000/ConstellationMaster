//
//  CMTabBarViewController.m
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/30.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMTabBarViewController.h"

#import "CMHomeViewController.h"
#import "CMDivViewController.h"
#import "CMFriViewController.h"
#import "CMProViewController.h"
#import "CMBaseNavController.h"
@interface CMTabBarViewController ()

@end

@implementation CMTabBarViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置UI
    [self setupUI];
    
}

- (void)setupUI{
    CMHomeViewController *home = [[CMHomeViewController alloc]init];
    [self addChildVc:home Tabtitle:@"首页" title:@"星座大师" image:@"icon_tab1" selectedImage:@"icon_tab1_on"];
    CMDivViewController *Div = [[CMDivViewController alloc]init];
    [self addChildVc:Div Tabtitle:@"占卜" title:@"占卜" image:@"icon_tab2" selectedImage:@"icon_tab2_on"];
    CMFriViewController *Fri = [[CMFriViewController alloc]init];
    [self addChildVc:Fri Tabtitle:@"好友" title:@"好友" image:@"icon_tab3" selectedImage:@"icon_tab3_on"];
    CMProViewController *Pro = [[CMProViewController alloc]init];
    [self addChildVc:Pro Tabtitle:@"个人" title:@"个人" image:@"icon_tab4" selectedImage:@"icon_tab4_on"];
}

- (void)addChildVc:(UIViewController *)childVc Tabtitle:(NSString *)Tabtitle title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    childVc.title = Tabtitle;
    childVc.navigationItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    //声明：这张图片按照原来的样子显示出来，不要自动渲染成其他颜色（比如蓝色）
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置文字样式
    NSMutableDictionary *textAtts = [NSMutableDictionary dictionary];
    textAtts[NSForegroundColorAttributeName] = CMRGB(123, 123, 123);
    
    NSMutableDictionary *selectTextAtts = [NSMutableDictionary dictionary];
    selectTextAtts[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [childVc.tabBarItem setTitleTextAttributes:textAtts forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAtts forState:UIControlStateSelected];
    
    //先给外面传进来的小控制器，包装一个导航控制器
    CMBaseNavController * nav = [[CMBaseNavController alloc]initWithRootViewController:childVc];
    //添加子控制器
    [self addChildViewController:nav];
}





/*
@property (nonatomic, strong) NSArray * dataList;
 
-(NSArray *)dataList{
 if (!_dataList) {
 _dataList = @[@"首页",@"占卜",@"好友",@"个人"];
 }
 return _dataList;
 }
 
- (void)setupChildrenViewControllers{
    NSArray * vcNames = @[@"CMHomeViewController",@"CMDivViewController",@"CMFriViewController",@"CMProViewController"];
    
    for (NSInteger i=0; i<vcNames.count; i++) {
        NSString * vcName = vcNames[i];
        UIViewController * vc = [[NSClassFromString(vcName)alloc]init];
        vc.title = self.dataList[i];
        
        //addChildViewController:vc 不会执行该vc的viewDidLoad
        [self addChildViewController:vc];
    }
}
*/
@end
