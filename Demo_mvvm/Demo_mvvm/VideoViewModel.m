//
//  VideoViewModel.m
//  Demo_mvvm
//
//  Created by Joyce on 2018/6/10.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import "VideoViewModel.h"

@implementation VideoViewModel

- (instancetype)initVideoViewModel{
    self = [super init];
    if (!self) return nil;
    _apiKey  = @"AIzaSyAZC6dymTciLawKjS5Pys-K2MPHzXrXprY";
    
    NSString *url = [NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=5&playlistId=%@&key=%@", @"PLOU2XLYxmsIKiu-I6EQL-as514X1q62zX", _apiKey];
    NSLog(@"*$* %@",url);
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:url]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:url]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                if([(NSHTTPURLResponse *)response statusCode] != 200){
                    NSLog(@"Error getting %@", url);
                }else{
                    
                    //NSLog(@"*p* %@",jsonStr);
                    
                    self->_videoModel = [[VideoModel alloc]initWithJSON:data];
                
                }
            }] resume];
    
    return self;
}


@end
