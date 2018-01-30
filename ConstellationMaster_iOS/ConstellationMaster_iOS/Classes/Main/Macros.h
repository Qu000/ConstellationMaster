//
//  Macros.h
//  ConstellationMaster_iOS
//
//  Created by qujiahong on 2018/1/30.
//  Copyright © 2018年 瞿嘉洪. All rights reserved.
//

#ifndef Macros_h
#define Macros_h


#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


#define CMRGB(r,g,b) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1.0]

#define CMRGBA(r,g,b,a) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:a]

#define CMRandomColor CMRGB(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#endif /* Macros_h */
