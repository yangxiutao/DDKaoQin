//
//  ViewController.m
//  DD
//
//  Created by YXT on 2016/12/30.
//  Copyright © 2016年 YXT. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"

@interface ViewController ()

/** 主视图 */
@property (nonatomic, strong) MainView *mainView;

@end

@implementation ViewController


#pragma mark - loadView

- (void)loadView{
    [super loadView];
    self.view = self.mainView;
}


#pragma mark - viewDidLoad

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - lazy initial MainView object

- (MainView *)mainView{
    
    if (!_mainView) {
        _mainView = [[MainView alloc]initWithFrame:self.view.bounds];
    }
    return _mainView;
}


#pragma mark - Help Action

- (IBAction)helpAction:(id)sender {
    
    NSLog(@"Help Help Help Help Help Help Help Help Help Help Help Help");
}

@end
