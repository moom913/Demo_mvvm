//
//  Snippet.h
//  Demo_mvvm
//
//  Created by Joy Lee on 2018/6/11.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "Thumbnail.h"

@interface Snippet : JSONModel
@property (nonatomic, strong)NSString* title;
@property (nonatomic, strong)Thumbnail* thumbnails;

@end

