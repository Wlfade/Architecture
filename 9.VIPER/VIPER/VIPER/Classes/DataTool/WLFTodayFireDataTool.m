//
//  WLFTodayFireDataTool.m
//  WLFDownLoadListern
//
//  Created by 小码哥 on 2017/2/12.
//  Copyright © 2017年 小码哥. All rights reserved.
//

#import "WLFTodayFireDataTool.h"

#import "WLFSessionManager.h"
#import "MJExtension.h"


#define kBaseUrl @"http://mobile.ximalaya.com/"

@interface WLFTodayFireDataTool ()

@property (nonatomic, strong) WLFSessionManager *sessionManager;

@end


@implementation WLFTodayFireDataTool

static WLFTodayFireDataTool *_shareInstance;

+ (instancetype)shareInstance {
    
    if (!_shareInstance) {
        _shareInstance = [[self alloc] init];
    }
    return _shareInstance;
}

- (WLFSessionManager *)sessionManager {
    if (!_sessionManager) {
        _sessionManager = [[WLFSessionManager alloc] init];
    }
    return _sessionManager;
}


- (void)getVoiceMsKey:(NSString *)key result:(void(^)(NSArray <WLFDownLoadVoiceModel *>*voiceMs))resultBlock {
    
    NSString *url = [NSString stringWithFormat:@"%@%@", kBaseUrl, @"mobile/discovery/v2/rankingList/track"];
    NSDictionary *param = @{
                            @"device": @"iPhone",
                            @"key": key,
                            @"pageId": @"1",
                            @"pageSize": @"30"
                            };
    
    [self.sessionManager request:RequestTypeGet urlStr:url parameter:param resultBlock:^(id responseObject, NSError *error) {
        
        NSMutableArray <WLFDownLoadVoiceModel *>*voiceMs = [WLFDownLoadVoiceModel mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        
        resultBlock(voiceMs);
        
    }];

    
    
}




@end
