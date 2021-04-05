//
//  WLFTodayFireVoiceCellPresenter.m
//  WLFDownLoadListern
//
//  Created by 小码哥 on 2017/2/12.
//  Copyright © 2017年 小码哥. All rights reserved.
//

#import "WLFTodayFireVoiceCellPresenter.h"

@interface WLFTodayFireVoiceCellPresenter()

@property (nonatomic, weak) TestTableViewCell *cell;

@end


@implementation WLFTodayFireVoiceCellPresenter

- (NSString *)title {
    return self.testModel.title;
}
- (void)bindToCell:(TestTableViewCell *)cell {
    
    self.cell = cell;
    cell.testLabel.text = self.title;

}

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}




@end
