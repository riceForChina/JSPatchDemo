//
//  JPViewController.h
//  JSPatch
//
//  Created by bang on 15/5/2.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPViewController : UIViewController

@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, copy) void(^block1)(void);

@property (nonatomic, weak) NSString *temp3;
@property (nonatomic, weak) UIView *tempView;
@property (nonatomic,weak)NSString *weakString;

@end
