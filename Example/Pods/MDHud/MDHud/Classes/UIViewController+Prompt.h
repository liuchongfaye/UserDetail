//
//  UIViewController+Prompt.h
//  ModulesDemo
//
//  Created by 刘冲 on 2021/1/4.
//  Copyright © 2021 lc. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MBProgressHUD;

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Prompt)

- (MBProgressHUD *)showHudLoading;
- (void)hideHudLoading;

- (void)showHudText:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
