//
//  Person.h
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : UIView

/** Header Image */
@property (nonatomic, strong) UIImage *headerImage;

/** Person's nickname */
@property (nonatomic, strong) NSString *nickName;

/** Group's name */
@property (nonatomic, strong) NSString *groupName;

/** Current time ,default today */
@property (nonatomic, strong) NSString *time;

 

@end
