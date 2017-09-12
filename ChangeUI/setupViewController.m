//
//  setupViewController.m
//  test
//
//  Created by jery on 2017/9/12.
//  Copyright © 2017年 J.C. All rights reserved.
//

#import "setupViewController.h"


@interface setupViewController ()

@end

@implementation setupViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        
        __block UIView *v = [[UIView alloc]initWithFrame:window.bounds];
        v.backgroundColor = [UIColor lightGrayColor];
        [window addSubview:v];
        
        UIActivityIndicatorView *indicatorView =[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        indicatorView.center = v.center;
        [indicatorView startAnimating];
        [v addSubview:indicatorView];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [indicatorView stopAnimating];
            [v removeFromSuperview];
            v = nil;
            
            User *user = [User shared]; user.isUser = !user.isUser;
        });
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
