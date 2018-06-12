//
//  ViewController.h
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoViewModel.h"
@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, readonly)VideoViewModel* videoViewModel;
@property (weak, nonatomic) IBOutlet UITableView *VdeoTableView;

//@property (weak, nonatomic) IBOutlet UIImageView *VideoImgView;
//@property (weak, nonatomic) IBOutlet UILabel *VideoTitleLabel;

@end

