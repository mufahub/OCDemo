//
//  OneViewController.m
//  TestDemo
//
//  Created by ztman on 2018/5/3.
//  Copyright © 2018年 MF. All rights reserved.
//

#import "OneViewController.h"
#import "OneTableCell.h"

@interface OneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSMutableArray *muArray;
@end

static NSString *oneCellid = @"oneCellid";
@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"公司";
    self.muArray = [NSMutableArray array];
    for (int i = 0; i < 24; i++) {
        [_muArray addObject:[@"李四 " stringByAppendingFormat:@"%02d",i]];
    }
    [self setupUI];
}

- (void)setupUI {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerNib:[UINib nibWithNibName:@"OneTableCell" bundle:nil] forCellReuseIdentifier:oneCellid];
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 300;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.muArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OneTableCell *cell = [tableView dequeueReusableCellWithIdentifier:oneCellid forIndexPath:indexPath];
    cell.name = self.muArray[indexPath.row];
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
