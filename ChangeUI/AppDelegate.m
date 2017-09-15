//
//  AppDelegate.m
//  ChangeUI
//
//  Created by jeaner on 2017/9/12.
//  Copyright © 2017年 Jeaner. All rights reserved.
//

#import "AppDelegate.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "setupViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UITabBarController *tabbar = [[UITabBarController alloc]init];
    
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
    
    tabbar.viewControllers = @[f_nav, s_nav, st_nav];
    self.window.rootViewController = tabbar;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
