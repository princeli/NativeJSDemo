//
//  NJTabBarController.m
//  NativeJSDemo
//
//  Created by ly on 15/12/10.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import "NJTabBarController.h"
#import "NJOneViewController.h"
#import "NJTwoViewController.h"
#import "NJThreeViewController.h"
#import "NJFourViewController.h"


@interface NJTabBarController ()

@end

@implementation NJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
}

/**
 *  添加所有子控制器方法
 */
- (void)setUpAllChildViewController{
    // 1.添加第一个控制器
    NJOneViewController *oneVC = [[NJOneViewController alloc]init];
    [self setUpOneChildViewController:oneVC image:[UIImage imageNamed:@"tab_home_icon"] title:@"首页"];
    
    // 2.添加第2个控制器
    NJTwoViewController *twoVC = [[NJTwoViewController alloc]init];
    [self setUpOneChildViewController:twoVC image:[UIImage imageNamed:@"js"] title:@"技术"];
    
    // 3.添加第3个控制器
    NJThreeViewController *threeVC = [[NJThreeViewController alloc]init];
    [self setUpOneChildViewController:threeVC image:[UIImage imageNamed:@"qw"] title:@"博文"];
    
    // 4.添加第4个控制器
    NJFourViewController *fourVC = [[NJFourViewController alloc]init];
    [self setUpOneChildViewController:fourVC image:[UIImage imageNamed:@"user"] title:@"我的江湖"];
}


/**
 *  添加一个子控制器的方法
 */
- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
    
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
    navC.title = title;
    //navC.view.backgroundColor = [UIColor whiteColor];
    navC.tabBarItem.image = image;
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
    
    viewController.navigationItem.title = title;
    
    [self addChildViewController:navC];
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
