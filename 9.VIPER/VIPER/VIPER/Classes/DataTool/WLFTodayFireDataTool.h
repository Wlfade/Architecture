//
//  WLFTodayFireDataTool.h
//  WLFDownLoadListern
//
//  Created by 小码哥 on 2017/2/12.
//  Copyright © 2017年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLFDownLoadVoiceModel.h"


@interface WLFTodayFireDataTool : NSObject

+ (instancetype)shareInstance;



- (void)getVoiceMsKey:(NSString *)key result:(void(^)(NSArray <WLFDownLoadVoiceModel *>*voiceMs))resultBlock;

@end
