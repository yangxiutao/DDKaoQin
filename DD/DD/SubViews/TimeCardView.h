//
//  TimeCardView.h
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TimeCardType) {
    TimeCardTypeInWork, //上班打卡
    TimeCardTypeOutWork //下班打卡
};
@interface TimeCardView : UIView

@end
