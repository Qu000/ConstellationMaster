//
//  CMAPIConfig.h
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/31.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMAPIConfig : NSObject

///服务器地址
#define SERVER_HOST @"http://www.xingzuodashi.cn/api"

///banner
#define API_banner @"a=news&type=1"

///每日一测API
#define API_MRYC @"a=news&type=2&catid=7&limit=5&paging=1"

///文章推荐API
#define API_WZTJ @"a=news&type=2&catid=2&limit=5&paging=1"

///视频推荐API
#define API_SPTJ @"a=news&type=2&catid=5&limit=5&paging=1"
@end
