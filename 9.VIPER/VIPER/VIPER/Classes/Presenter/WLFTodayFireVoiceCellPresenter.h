//
//  WLFTodayFireVoiceCellPresenter.h
//  WLFDownLoadListern
//
//  Created by 小码哥 on 2017/2/12.
//  Copyright © 2017年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLFDownLoadVoiceModel.h"
#import "TestTableViewCell.h"

// 1. 准备所有view需要的最终数据 (MVVM)
// 2. 展示到view上面
@interface WLFTodayFireVoiceCellPresenter : NSObject

@property (nonatomic, strong) WLFDownLoadVoiceModel *testModel;

- (void)bindToCell:(TestTableViewCell *)cell;


@end
