//
//  TestTableViewCell.h
//  VIPER
//
//  Created by xsj on 2021/3/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end

NS_ASSUME_NONNULL_END
