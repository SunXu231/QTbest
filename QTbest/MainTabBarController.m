//
//  MainTabBarController.m
//  QTbest
//
//  Created by 孙旭 on 16/1/29.
//  Copyright © 2016年 青田优品. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomePageVC.h"
#import "ClassifyVC.h"
#import "ShopCarVC.h"
#import "MineVC.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //配置自定义tabBar
    [self setTabBar];
    
}

#pragma mark -- 配置tabBar
- (void)setTabBar{
    
    HomePageVC *homePage = [[HomePageVC alloc] initWithStyle:UITableViewStyleGrouped];
    homePage.title = @"首页";
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homePage];
    ClassifyVC *classify = [[ClassifyVC alloc] initWithStyle:UITableViewStyleGrouped];
    classify.title = @"分类";
    UINavigationController *classifyNav = [[UINavigationController alloc] initWithRootViewController:classify];
    ShopCarVC *shopCar = [[ShopCarVC alloc] initWithStyle:UITableViewStyleGrouped];
    shopCar.title = @"购物车";
    UINavigationController *shopCarNav = [[UINavigationController alloc] initWithRootViewController:shopCar];
    MineVC *mine = [[MineVC alloc] initWithStyle:UITableViewStyleGrouped];
    mine.title = @"我的";
    UINavigationController *mineNav = [[UINavigationController alloc] initWithRootViewController:mine];
    self.viewControllers = @[homeNav,classifyNav,shopCarNav,mineNav];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end































