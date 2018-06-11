//
//  VideoViewModel.h
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoModel.h"
@interface VideoViewModel : NSObject
- (instancetype)initVideoViewModel;
@property(nonatomic, readonly) NSString* apiKey;
@property(nonatomic, readonly) VideoModel* videoModel;
@end
