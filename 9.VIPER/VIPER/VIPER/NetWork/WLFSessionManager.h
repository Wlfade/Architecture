//
//  WLFSessionManager.h
//  喜马拉雅FM
//
//  Created by WLF on 16/8/2.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    RequestTypeGet,
    RequestTypePost

}RequestType;


@interface WLFSessionManager : NSObject
- (void)setValue:(NSString *)value forHttpField:(NSString *)field;

- (void)request:(RequestType)requestType urlStr: (NSString *)urlStr parameter: (NSDictionary *)param resultBlock: (void(^)(id responseObject, NSError *error))resultBlock;

@end
