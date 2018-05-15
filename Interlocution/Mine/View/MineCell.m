//
//  MIneCell.m
//  Interlocution
//
//  Created by company on 2018/5/14.
//  Copyright © 2018年 company. All rights reserved.
//

#import "MIneCell.h"

@implementation MIneCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.font = [UIFont systemFontOfSize:15];
        self.titleLabel = titleLabel;
        
        UILabel *informationLabel = [[UILabel alloc] init];
        informationLabel.font = [UIFont systemFontOfSize:15];
        informationLabel.text = @"vniosd";
        self.informationLabel = informationLabel;
        
        
        [self.contentView addSubview:titleLabel];
        [self.contentView addSubview:informationLabel];
        
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(20);
            make.top.equalTo(self).offset(15);
        }];
        [informationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self).offset(-20);
            make.top.equalTo(titleLabel);
        }];
        
    }
    return self;
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
