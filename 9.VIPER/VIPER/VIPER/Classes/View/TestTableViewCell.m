//
//  TestTableViewCell.m
//  VIPER
//
//  Created by xsj on 2021/3/20.
//

#import "TestTableViewCell.h"

@implementation TestTableViewCell
static NSString *const cellID = @"testCell";

+ (instancetype)cellWithTableView:(UITableView *)tableView {

    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];

    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TestTableViewCell" owner:nil options:nil] firstObject];
    }

    return cell;
}


@end
