//
//  NJSettingItem.h
//  NativeJSDemo
//
//  Created by ly on 15/12/11.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NJSettingItem : NSObject
@property (strong, nonatomic) NSString * title;/**< 标题 */
+ (instancetype)itemWithtitle:(NSString *)title;/**< 设置标题值 类方法 */
@end
