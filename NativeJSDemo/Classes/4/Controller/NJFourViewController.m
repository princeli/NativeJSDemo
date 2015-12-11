//
//  NJFourViewController.m
//  NativeJSDemo
//
//  Created by ly on 15/12/10.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import "NJFourViewController.h"
#import "NJGroupitem.h"
#import "NJSettingItem.h"

@interface NJFourViewController ()
@property (strong, nonatomic) NSMutableArray * groups;/**< 组数组 描述TableView有多少组 */
@end

@implementation NJFourViewController


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}


- (instancetype)init{
    // 设置tableView的分组样式为Group样式
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加第1组模型
    [self setGroup1];
    //添加第2组模型
    [self setGroup2];
    //添加第3组模型
    [self setGroup3];
    
}

- (void)setGroup1{
    // 创建组模型
    NJGroupItem *group = [[NJGroupItem alloc]init];
    // 创建行模型
    NJSettingItem *item = [NJSettingItem itemWithtitle:@"我的账号"];
    NJSettingItem *item1 = [NJSettingItem itemWithtitle:@"我的收藏"];
    
    // 保存行模型数组
    group.items = @[item,item1];
    // 把组模型保存到groups数组
    [self.groups addObject:group];
}

- (void)setGroup2{
    
    NJGroupItem *group = [[NJGroupItem alloc]init];
    
    NJSettingItem *item = [NJSettingItem itemWithtitle:@"我去好评"];
    NJSettingItem *item1 = [NJSettingItem itemWithtitle:@"我去吐槽"];
    
    group.items = @[item,item1];
    
    [self.groups addObject:group];
}

- (void)setGroup3{
    
    NJGroupItem *group = [[NJGroupItem alloc]init];
    
    NJSettingItem *item = [NJSettingItem itemWithtitle:@"关注我们"];
    NJSettingItem *item1 = [NJSettingItem itemWithtitle:@"关于我们"];
    
    group.items = @[item,item1];
    
    [self.groups addObject:group];
}

#pragma mark - TableView的数据源代理方法实现

/**
 *  返回有多少组的代理方法
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}
/**
 *  返回每组有多少行的代理方法
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NJGroupItem *group = self.groups[section];
    return group.items.count;
}

/**
 *  返回每一行Cell的代理方法
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 1 初始化Cell
    // 1.1 设置Cell的重用标识
    static NSString *ID = @"cell";
    // 1.2 去缓存池中取Cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 1.3 若取不到便创建一个带重用标识的Cell
    if (cell == nil) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    // 设置Cell右边的小箭头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    // 2 设置数据
    // 2.1 取出组模型
    NJGroupItem *group = self.groups[indexPath.section];
    // 2.2 根据组模型取出行（Cell）模型
    NJSettingItem *item = group.items[indexPath.row];
    // 2.3 根据行模型的数据赋值
    cell.textLabel.text = item.title;
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
