//
//  Person.m
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import "Person.h"
#import "KaoqinMacro.h"
#import "NSDate+Category.h"

@interface Person ()

/** 头像 */
@property (nonatomic, strong) UIImageView *headerImageView;

/** 考勤人名称 */
@property (nonatomic, strong) UILabel *nameLabel;

/** 考勤人所在组名称 */
@property (nonatomic, strong) UILabel *groupLabel;

/** 考勤时间 */
@property (nonatomic, strong) UIButton *timeBtn;

/** 底部分割线 */
@property (nonatomic, strong) CALayer *bottomLineLayer;

@end

@implementation Person

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor redColor];
        [self setup];
    }
    
    return self;
}

- (void)setup{
    [self addSubview:self.headerImageView];
}


#pragma mark - Lazy Initialization SubViews

- (UIImageView *)headerImageView{
    
    if (!_headerImageView) {
        UIImageView *imgView = [[UIImageView alloc]init];
        imgView.userInteractionEnabled = YES;
        _headerImageView = imgView;
    }
    return _headerImageView;
}


@end
