//
//  MainView.m
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import "MainView.h"
#import "Person.h"
#import "KaoqinMacro.h"

@interface MainView ()

/** Person Information View */
@property (nonatomic, strong) Person *personView;

@end

@implementation MainView



- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self setup];
    }
    
    return self;
}

- (void)setup{
    [self addSubview:self.personView];
}


#pragma mark - lazt initialization

- (Person *)personView{
    if (!_personView) {
        _personView = [[Person alloc]initWithFrame:CGRectMake(0, 0, kWidth, 100)];
    }
    return _personView;
}

@end
