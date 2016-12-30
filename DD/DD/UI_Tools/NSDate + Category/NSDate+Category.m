//
//  NSDate+Category.m
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import "NSDate+Category.h"

@implementation NSDate (Category)



+ (NSDateFormatter *)dateFormatterWithFormatterType:(DateFormatterType)formatterType{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    switch (formatterType) {
        case DateFormatterTypeYM:
            formatter.dateFormat = @"yyyy-MM";
            break;
            
        case DateFormatterTypeYMD:
            formatter.dateFormat = @"yyyy-MM-dd";
            break;
            
        case DateFormatterTypeYMDHMS:
            formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
            break;
            
        default:
            break;
    }
    return formatter;
}

+ (NSString *)todayDateWithFormatter:(NSDateFormatter *)formatter{
    
    return [formatter stringFromDate:[NSDate date]];
}

@end
