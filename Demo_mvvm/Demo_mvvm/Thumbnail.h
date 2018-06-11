//
//  Thumbnail.h
//  Demo_mvvm
//
//  Created by Joy Lee on 2018/6/11.
//  Copyright © 2018年 Joy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MediumImg.h"

@interface Thumbnail : JSONModel
@property (nonatomic, strong)MediumImg* medium;

@end
