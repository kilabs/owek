//
//  netraTableViewCell.m
//  Suara Hewan
//
//  Created by Arie Prasetyo on 7/5/14.
//  Copyright (c) 2014 vanbungkring. All rights reserved.
//

#import "netraTableViewCell.h"

@implementation netraTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.icon = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 170/2, 170/2)];
        [self.icon setImage:[UIImage imageNamed:@"cat"]];
        [self.contentView addSubview:self.icon];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
