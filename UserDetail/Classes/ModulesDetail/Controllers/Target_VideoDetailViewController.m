//
//  Target_VideoDetailViewController.m
//  UserDetail_Example
//
//  Created by 刘冲 on 2021/2/9.
//  Copyright © 2021 liuchongfaye. All rights reserved.
//

#import "Target_VideoDetailViewController.h"
#import "VideoDetailViewController.h"

@implementation Target_VideoDetailViewController

- (UIViewController *)Action_VideoDetailViewController:(NSDictionary *)params {
    VideoDetailViewController *vc = [VideoDetailViewController new];
    vc.ID = params[@"ID"];
    vc.count = params[@"count"];
    vc.videoDetailPlayBlock = params[@"videoDetailPlayBlock"];
    
    return vc;
}

@end
