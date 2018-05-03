//
//  ViewController.m
//  TestDemo
//
//  Created by MF on 18/5/3.
//  Copyright © 2018年 MF. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
#import "OneViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *oneBtn = [[UIButton alloc] init];
    oneBtn.frame = CGRectMake(100, 100, 100, 40);
    [oneBtn setTitle:@"one" forState:UIControlStateNormal];
    [oneBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:oneBtn];
    [oneBtn addTarget:self action:@selector(oneBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *twoBtn = [[UIButton alloc] init];
    twoBtn.frame = CGRectMake(100, 200, 100, 40);
    [twoBtn setTitle:@"two" forState:UIControlStateNormal];
    [twoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:twoBtn];
    [twoBtn addTarget:self action:@selector(towBtnClick) forControlEvents:UIControlEventTouchUpInside];
}


- (void)towBtnClick {
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    
    [self.navigationController pushViewController:twoVC animated:YES];

   
}


- (void)oneBtnClick {
    OneViewController *oneVC = [[OneViewController alloc] init];
    [self.navigationController pushViewController:oneVC animated:YES];
}


@end
