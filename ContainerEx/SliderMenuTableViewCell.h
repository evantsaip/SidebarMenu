//
//  SliderMenuTableViewCell.h
//  ContainerEx
//
//  Created by lalaleelala on 4/29/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderMenuTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *cellLbl;

- (void)loadCell:(NSString*)cellData;
@end
