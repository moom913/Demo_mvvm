//
//  ViewController.m
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _videoViewModel = [[VideoViewModel alloc]initVideoViewModel];
    
    _VdeoTableView.delegate = self;
    _VdeoTableView.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    //let videoTitleTextView = cell.viewWithTag(1) as! UITextView
    
    cell.textLabel.text = _videoViewModel.videoModel.video.title[indexPath.row];
    NSURL * url = [NSURL URLWithString:_videoViewModel.videoModel.video.url[indexPath.row]];
    NSData * data = [NSData dataWithContentsOfURL:url];
    UIImage * image = [UIImage imageWithData:data];
    cell.imageView.image = image;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return [_videoViewModel.videoModel.video.title count];
}
@end
