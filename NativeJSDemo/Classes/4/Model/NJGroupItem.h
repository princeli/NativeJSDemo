//
//  NJGroupItem.h
//  NativeJSDemo
//
//  Created by ly on 15/12/11.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NJGroupItem : NSObject
/** 头部标题 */
@property (strong, nonatomic) NSString * headerTitle;
/** 尾部标题 */
@property (strong, nonatomic) NSString * footerTitle;
/** 组中的行数组 */
@property (strong, nonatomic) NSArray * items;
@end
