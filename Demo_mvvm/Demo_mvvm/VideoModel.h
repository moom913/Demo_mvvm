//
//  VideoModel.h
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Video.h"
#import "JSONModel.h"
@interface VideoModel : NSObject
-(instancetype)initWithJSON:(NSData*)JSONData;
@property(nonatomic, readonly)Video* video;
@end
