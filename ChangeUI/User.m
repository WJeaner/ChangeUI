//
//  User.m
//  test
//
//  Created by jery on 2017/9/12.
//  Copyright © 2017年 J.C. All rights reserved.
//

#import "User.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fourthViewController.h"
#import "setupViewController.h"

@implementation User

+ (User *)shared {
    static User *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!_user) {
            _user = [[self alloc]init];
        }
    });
    return _user;
}

- (void)setIsUser:(BOOL)isUser {
    _isUser = isUser;
    
    id vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    if ([vc isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabbar = (UITabBarController *)vc;
        tabbar.viewControllers = nil;
        
        setupViewController *st_vc = [setupViewController new];
        st_vc.title = @"setup";
        UINavigationController *st_nav = [[UINavigationController alloc]initWithRootViewController:st_vc];
        UITabBarItem *itemOrderList2 = [[UITabBarItem alloc] initWithTitle:@"first" image:nil tag:2];
        UIImage  *selectedOriginalImage2 = [UIImage imageNamed:@"tabbar_setp"];
        //    //声明这张图片用原图(别渲染)
        selectedOriginalImage2 = [selectedOriginalImage2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        itemOrderList2=[itemOrderList2 initWithTitle:@"setup" image:[UIImage imageNamed:@"tabbar_setp_sel"] selectedImage:selectedOriginalImage2];
        
        [itemOrderList2 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
        st_vc.tabBarItem = itemOrderList2;
        
        if (isUser) {
            
            thirdViewController *f_vc = [thirdViewController new];
            f_vc.title = @"found";
            UINavigationController *f_nav = [[UINavigationController alloc]initWithRootViewController:f_vc];
            UITabBarItem *itemOrderList = [[UITabBarItem alloc] initWithTitle:@"first" image:nil tag:2];
            UIImage  *selectedOriginalImage = [UIImage imageNamed:@"tabbar_found_sel"];
            //    //声明这张图片用原图(别渲染)
            selectedOriginalImage = [selectedOriginalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            itemOrderList=[itemOrderList initWithTitle:@"found" image:[UIImage imageNamed:@"tabbar_found"] selectedImage:selectedOriginalImage];
            [itemOrderList setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
            f_vc.tabBarItem = itemOrderList;
            
            
            fourthViewController *s_vc = [fourthViewController new];
            s_vc.title = @"releation";
            UINavigationController *s_nav = [[UINavigationController alloc]initWithRootViewController:s_vc];
            UITabBarItem *itemOrderList1 = [[UITabBarItem alloc] initWithTitle:@"first" image:nil tag:2];
            UIImage  *selectedOriginalImage1 = [UIImage imageNamed:@"tabbar_releation_sel"];
            //    //声明这张图片用原图(别渲染)
            selectedOriginalImage1 = [selectedOriginalImage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            itemOrderList1=[itemOrderList1 initWithTitle:@"releation" image:[UIImage imageNamed:@"tabbar_releation"] selectedImage:selectedOriginalImage1];
            
            [itemOrderList1 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
            s_vc.tabBarItem = itemOrderList1;
            
            
            tabbar.viewControllers = @[f_nav, s_nav, st_nav];
//            tabbar.selectedIndex=2;

        } else {
            firstViewController *f_vc = [firstViewController new];
            f_vc.title = @"chat";
            UINavigationController *f_nav = [[UINavigationController alloc]initWithRootViewController:f_vc];
            UITabBarItem *itemOrderList = [[UITabBarItem alloc] initWithTitle:@"first" image:nil tag:2];
            UIImage  *selectedOriginalImage = [UIImage imageNamed:@"tabbar_chat_sel"];
            //    //声明这张图片用原图(别渲染)
            selectedOriginalImage = [selectedOriginalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            itemOrderList=[itemOrderList initWithTitle:@"chat" image:[UIImage imageNamed:@"tabbar_chat"] selectedImage:selectedOriginalImage];
            
            [itemOrderList setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
            f_vc.tabBarItem = itemOrderList;
            
            
            secondViewController *s_vc = [secondViewController new];
            s_vc.title = @"shop";
            UINavigationController *s_nav = [[UINavigationController alloc]initWithRootViewController:s_vc];
            UITabBarItem *itemOrderList1 = [[UITabBarItem alloc] initWithTitle:@"first" image:nil tag:2];
            UIImage  *selectedOriginalImage1 = [UIImage imageNamed:@"tabbar_shop_sel"];
            //    //声明这张图片用原图(别渲染)
            selectedOriginalImage1 = [selectedOriginalImage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            itemOrderList1=[itemOrderList1 initWithTitle:@"shop" image:[UIImage imageNamed:@"tabbar_shop"] selectedImage:selectedOriginalImage1];
            
            [itemOrderList1 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
            s_vc.tabBarItem = itemOrderList1;
            
            tabbar.viewControllers = @[f_nav, s_nav, st_nav];
//            tabbar.selectedIndex=2;
        }
    }
}

@end

