//
//  NSDate+Category.h
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DateFormatterType) {
    
    /** yyyy-MM-dd */
    DateFormatterTypeYMD,
    
    /** yyyy-MM */
    DateFormatterTypeYM,
    
    /** yyyy-MM-dd HH:mm:ss */
    DateFormatterTypeYMDHMS
};

@interface NSDate (Category)

/**
 NSDateFormatter new

 @param formatterType DateFormatterType
 @return NSDateFormatter's object
 */
+ (NSDateFormatter *)dateFormatterWithFormatterType:(DateFormatterType)formatterType;

/**
 Get current date,means today's date

 @param formatter NSDateFormatter with DateFormatterType
 @return today date, it's value is NSString's object
 */
+ (NSString *)todayDateWithFormatter:(NSDateFormatter *)formatter;

@end
