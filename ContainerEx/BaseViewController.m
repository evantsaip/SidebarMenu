//
//  BaseViewController.m
//  ContainerEx
//
//  Created by lalaleelala on 4/29/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController 
{
    NSMutableArray *sliderMenuDataAry;
}
- (void)viewWillAppear:(BOOL)animated {
    sliderMenuDataAry = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < 10; i ++) {
        [sliderMenuDataAry addObject:[NSString stringWithFormat:@"%d",i]];
    }
    NSLog(@"%@",sliderMenuDataAry);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _sliderMenuTableView.delegate = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return sliderMenuDataAry.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"SliderMenuTableViewCell";

    
    SliderMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SliderMenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [cell loadCell:sliderMenuDataAry[indexPath.row]];
    
    return cell;
}



@end
