//
//  TwoTableCell.m
//  TestDemo
//
//  Created by MF on 18/5/3.
//  Copyright © 2018年 MF. All rights reserved.
//

#import "OneTableCell.h"

@interface OneTableCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation OneTableCell

- (void)setName:(NSString *)name {
    _name = name;
    self.nameLabel.text = name;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
