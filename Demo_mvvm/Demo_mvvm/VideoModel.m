//
//  VideoModel.m
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import "VideoModel.h"

@implementation VideoModel
-(instancetype)initWithJSON:(NSData*)JSONData{
    
    NSString* jsonStr = [[NSString alloc] initWithData:JSONData encoding:NSUTF8StringEncoding];
    NSError *error;
    _video = [[Video alloc]initWithString:jsonStr error:&error];
    
    for(int i=0;i<[_video.title count];i++){
        NSLog(@"*%d* %@ %@" , i, _video.title[i], _video.url[i]);
    }
    
    return self;
}

@end
