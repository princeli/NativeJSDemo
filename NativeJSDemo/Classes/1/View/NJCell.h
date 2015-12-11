//
//  NJCell.h
//  NativeJSDemo
//
//  Created by ly on 15/12/11.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NJMenu;

@interface NJCell : UITableViewCell
/** 菜单模型 */
@property (strong, nonatomic) NJMenu * menu;
@end
