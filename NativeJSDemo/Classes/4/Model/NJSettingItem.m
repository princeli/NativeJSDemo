//
//  NJSettingItem.m
//  NativeJSDemo
//
//  Created by ly on 15/12/11.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import "NJSettingItem.h"

@implementation NJSettingItem
+ (instancetype)itemWithtitle:(NSString *)title{
    NJSettingItem *item = [[NJSettingItem alloc]init];
    item.title = title;
    return item;
}
@end
