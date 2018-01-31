//
//  CMHomeHandler.h
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/31.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMBaseHandler.h"

@interface CMHomeHandler : CMBaseHandler

/**
 * 获取banner信息
 * success
 * failed
 */
+ (void)executeGetBannerTaskWithSuccess:(SuccessBlock)success failed:(FailedBlock)failed;
+ (void)executePostBannerTaskWithSuccess:(SuccessBlock)success failed:(FailedBlock)failed;
@end
