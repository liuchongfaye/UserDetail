//
//  VideoDetailViewController.m
//  ModulesDemo
//
//  Created by 刘冲 on 2021/1/16.
//  Copyright © 2021 lc. All rights reserved.
//

#import "VideoDetailViewController.h"
@import MDHud;

@import Masonry;



@interface VideoDetailViewController ()

@property (nonatomic, strong) UILabel *videoLabel;
@property (nonatomic, strong) UIButton *backBtn;

@end

@implementation VideoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showHudLoading];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hideHudLoading];
        
        [self configureViews];
    });
}

- (void)configureViews {
    self.videoLabel = [UILabel new];
    self.videoLabel.backgroundColor = UIColor.greenColor;
    self.videoLabel.text = [NSString stringWithFormat:@"视频ID:%@, 播放数量：%@",self.ID, self.count];
    [self.view addSubview:self.videoLabel];
    
    self.backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.backBtn.backgroundColor = UIColor.blueColor;
    [self.backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self.backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.backBtn];
    
    [self.videoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.view.mas_top).offset(150);
    }];
    
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.videoLabel.mas_bottom).offset(50);
    }];
}

- (void)back {
    if (self.videoDetailPlayBlock) {
        self.videoDetailPlayBlock(self.ID, [NSString stringWithFormat:@"%d", self.count.intValue + 300]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
