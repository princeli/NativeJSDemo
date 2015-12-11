//
//  NJCell.m
//  NativeJSDemo
//
//  Created by ly on 15/12/11.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import "NJCell.h"
#import "NJMenu.h"
#import <UIImageView+WebCache.h>

@interface NJCell ()
@property (weak, nonatomic) IBOutlet UIImageView *albumsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;
@end

@implementation NJCell
- (void)setMenu:(NJMenu *)menu{
    
    _menu = menu;
    // 利用SDWebImage框架加载图片资源
    [self.albumsImageView sd_setImageWithURL:[NSURL URLWithString:menu.albums]];
    // 设置标题
    self.titleLable.text = menu.title;
    // 设置材料数据
    self.ingredientsLabel.text = menu.ingredients;
    
}
@end
