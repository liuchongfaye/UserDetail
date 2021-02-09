//
//  UIViewController+Prompt.m
//  ModulesDemo
//
//  Created by 刘冲 on 2021/1/4.
//  Copyright © 2021 lc. All rights reserved.
//

#import "UIViewController+Prompt.h"

@implementation UIViewController (Prompt)

- (MBProgressHUD *)showHudLoading {
    MBProgressHUD *hudLoadingView = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hudLoadingView.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hudLoadingView.bezelView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    
    return hudLoadingView;
}

- (void)hideHudLoading {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

- (void)showHudText:(NSString *)text {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    
    hud.mode = MBProgressHUDModeText;
    hud.label.text = text;
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.label.textColor = [UIColor whiteColor];
    hud.label.numberOfLines = 0;
    
    [hud hideAnimated:YES afterDelay:1.5f];
}

@end
