//
//  CMHomeTableViewCell.m
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/30.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMHomeTableViewCell.h"

@implementation CMHomeTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"homeTableCell";
    CMHomeTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[CMHomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // 取消cell选中变色
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        // Banner
        [self setBannerCell];
        
        // Normal
        [self setNormalCell];
    }
    return self;
}

- (void)setBannerCell{
    
}
- (void)setNormalCell{
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
