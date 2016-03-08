//
//  FSHomeViewController.m
//  FastApp
//
//  Created by tangkunyin on 16/3/7.
//  Copyright © 2016年 www.shuoit.net. All rights reserved.
//

#import "FSHomeViewController.h"
#import "FSNavigationController.h"
#import "FSPersonCenterViewController.h"

@implementation FSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addAllChildViewControllers];
}


- (void)addAllChildViewControllers
{
    //首页
    FSPersonCenterViewController *indexVC = [[FSPersonCenterViewController alloc] init];
    [self addChildViewController:indexVC title:@"首页" image:nil selectedImage:nil];
    
    //我的
    FSPersonCenterViewController *mineVC = [[FSPersonCenterViewController alloc] init];
    [self addChildViewController:mineVC title:@"我的" image:nil selectedImage:nil];
    
    //呵呵
    FSPersonCenterViewController *heheVC = [[FSPersonCenterViewController alloc] init];
    [self addChildViewController:heheVC title:@"呵呵" image:nil selectedImage:nil];
    
    //你的
    FSPersonCenterViewController *yourVC = [[FSPersonCenterViewController alloc] init];
    [self addChildViewController:yourVC title:@"你的" image:nil selectedImage:nil];
    
    //他的
    FSPersonCenterViewController *hisVc = [[FSPersonCenterViewController alloc] init];
    [self addChildViewController:hisVc title:@"他的" image:nil selectedImage:nil];
}


- (void)addChildViewController:(UIViewController *)childController
                         title:(NSString *)title
                         image:(NSString *)normalImageName
                 selectedImage:(NSString *)selectedImageName
{
    childController.tabBarItem.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:normalImageName];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    //设置字体颜色和阴影
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:itemAttrs forState:UIControlStateHighlighted];
    
    childController.title = title;
    FSNavigationController *nav = [[FSNavigationController alloc] initWithRootViewController:childController];
    
    [self addChildViewController:nav];
}

@end
