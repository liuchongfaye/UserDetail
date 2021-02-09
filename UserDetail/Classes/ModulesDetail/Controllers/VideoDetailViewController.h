//
//  VideoDetailViewController.h
//  ModulesDemo
//
//  Created by 刘冲 on 2021/1/16.
//  Copyright © 2021 lc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoDetailViewController : UIViewController

@property (nonatomic, copy)   NSString *ID;
@property (nonatomic, copy)   NSString *count;

@property (nonatomic, copy)   void(^videoDetailPlayBlock)(NSString *ID, NSString *count);

@end

NS_ASSUME_NONNULL_END
