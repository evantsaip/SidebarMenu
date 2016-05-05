//
//  BaseViewController.h
//  ContainerEx
//
//  Created by lalaleelala on 4/29/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SliderMenuTableViewCell.h"
@interface BaseViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *sliderMenuTableView;

@end
