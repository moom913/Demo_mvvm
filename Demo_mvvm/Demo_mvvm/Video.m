//
//  Video.m
//  Demo_mvvm
//
//  Created by Joy Lee on 2018/6/11.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import "Video.h"

@implementation Video

+ (JSONKeyMapper *)keyMapper
{
    JSONKeyMapper* a = [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"url":@"items.snippet.thumbnails.medium.url",
                                                                  @"title": @"items.snippet.title"
                                                                  }];    
    return a;
}

@end

