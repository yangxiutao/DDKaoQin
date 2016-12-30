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

@end

@implementation Person

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self setup];
    }
    
    return self;
}

- (void)setup{
    [self addSubview:self.headerImageView];
    [self addSubview:self.nameLabel];
    [self addSubview:self.groupLabel];
    [self addSubview:self.timeBtn];
    
    __weak typeof(self) weakSelf = self;
    /** header image view */
    [self.headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.mas_top).offset(5);
        make.left.equalTo(weakSelf.mas_left).offset(10);
        make.bottom.equalTo(weakSelf.mas_bottom).offset(-5);
        make.width.equalTo(weakSelf.headerImageView.mas_height).offset(0);
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(weakSelf.groupLabel.mas_top).offset(-5);
        make.left.equalTo(weakSelf.headerImageView.mas_right).offset(10);
    }];
    
    [self.groupLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.equalTo(weakSelf.headerImageView.mas_right).offset(10);
        
        make.bottom.equalTo(weakSelf.headerImageView.mas_bottom).offset(0);
    }];
    
    [self.timeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.headerImageView.mas_top).offset(5);
        make.bottom.equalTo(weakSelf.headerImageView.mas_bottom).offset(-5);
        make.right.equalTo(weakSelf.mas_right).offset(-10);
        make.width.mas_equalTo(80);
    }];
}

- (void)layoutSublayersOfLayer:(CALayer *)layer{
    [super layoutSublayersOfLayer:layer];
    
    self.headerImageView.layer.cornerRadius = self.headerImageView.frame.size.width / 2;
    self.headerImageView.layer.masksToBounds = YES;
    
    
    self.timeBtn.layer.cornerRadius = 3;
    self.timeBtn.layer.masksToBounds = YES;
    
    
}

#pragma mark - Lazy Initialization SubViews

- (UIImageView *)headerImageView{
    
    if (!_headerImageView) {
        UIImageView *imgView = [[UIImageView alloc]init];
        imgView.userInteractionEnabled = YES;
        imgView.image = [UIImage imageNamed:@"1.jpg"];
        _headerImageView = imgView;
    }
    return _headerImageView;
}

- (UILabel *)nameLabel{
    
    if (!_nameLabel) {
        UILabel *label = [[UILabel alloc]init];
        label.font  = [UIFont systemFontOfSize:15];
        label.textColor = titleColor;
        label.text = @"cpu restarting";
        _nameLabel = label;
    }
    return _nameLabel;
}

-  (UILabel *)groupLabel{
    
    if (!_groupLabel) {
        UILabel *label = [[UILabel alloc]init];
        label.font  = [UIFont systemFontOfSize:13];
        label.textColor = subTitleColor;
        label.text = @"考勤组：考勤";
        _groupLabel = label;
    }
    
    return _groupLabel;
}

- (UIButton *)timeBtn{
    
    if (!_timeBtn) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundColor:timeBtnBackgroundColor];
        [btn setTitleColor:timeBtnTitleColor forState:UIControlStateNormal];
        [btn setTitle:@"2016.12.30" forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        [btn addTarget:self action:@selector(selectedTime:) forControlEvents:UIControlEventTouchUpInside];
        _timeBtn = btn;
    }
    return _timeBtn;
}

#pragma mark - 选择时间

- (void)selectedTime:(UIButton *)sender{
    NSLog(@"选择时间");
}


#pragma mark - drawRect

- (void)drawRect:(CGRect)rect{
    //draw bottom line
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 0.3);  //线宽
    CGContextSetAllowsAntialiasing(context, true);
    CGContextSetRGBStrokeColor(context, 223.0 / 255.0, 223.0 / 255.0, 223.0 / 255.0, 1.0);  //线的颜色
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 0, self.frame.size.height - 0.3);  //起点坐标
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height - 0.3);   //终点坐标
    CGContextStrokePath(context);
}

@end
