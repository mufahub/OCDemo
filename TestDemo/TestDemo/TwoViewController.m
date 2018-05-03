//
//  TwoViewController.m
//  TestDemo
//
//  Created by MF on 18/5/3.
//  Copyright © 2018年 MF. All rights reserved.
//

#import "TwoViewController.h"
#import "TwoTableCell.h"

@interface TwoViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)UITableView *tableView; //
@property (nonatomic, strong)NSMutableArray *muArray; //
@end
static NSString *cellid = @"cellid";
@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.muArray = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        [_muArray addObject:[@"zhangsnan" stringByAppendingFormat:@"%02d",i]];
    }
    [self setupUI];
}


- (void)setupUI {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerNib:[UINib nibWithNibName:@"TwoTableCell" bundle:nil] forCellReuseIdentifier:cellid];
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 300;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.001;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.muArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TwoTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
//    cell.balanceModel = self.balanceArray[indexPath.row];
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
