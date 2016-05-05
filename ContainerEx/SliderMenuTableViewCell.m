//
//  SliderMenuTableViewCell.m
//  ContainerEx
//
//  Created by lalaleelala on 4/29/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import "SliderMenuTableViewCell.h"

@implementation SliderMenuTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSArray *nibArray = [[NSBundle mainBundle]loadNibNamed:@"SliderMenuTableViewCell" owner:self options:nil];
        self = [nibArray objectAtIndex:0];
    }
    
    return self;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)loadCell:(NSString*)cellData {
    _cellLbl.text = cellData;
    NSLog(@"%@",cellData);
}
@end
