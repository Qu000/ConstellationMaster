//
//  CMHomeHandler.m
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/31.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import "CMHomeHandler.h"

#import "CMHttpTool.h"

@implementation CMHomeHandler

+ (void)executeGetBannerTaskWithSuccess:(SuccessBlock)success failed:(FailedBlock)failed{
    
    [CMHttpTool getWithPath:API_banner params:nil success:^(id json) {
        
        if ([json[@"dm_error"] integerValue]) {
            
            failed(json[@"error_msg"]);
            
        }
        else{
            //            success(json);
            //返回信息正确--数据解析
//            NSArray * lives = [JHLive mj_objectArrayWithKeyValuesArray:json[@"lives"]];
//
//            success(lives);
            
            
        }
        success(json);
    } failure:^(NSError *error) {
        
        failed(error);
        
    }];
    
}

+ (void)executePostBannerTaskWithSuccess:(SuccessBlock)success failed:(FailedBlock)failed{
    
    [CMHttpTool postWithPath:API_banner params:nil success:^(id json) {
        
        success(json);
        
    } failure:^(NSError *error) {
        
        failed(error);
        
    }];
}

@end
