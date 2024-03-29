//
//  BasePresenter.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BasePresenter.h"


@implementation BasePresenter

#pragma mark - View LifeCycle

- (void)loadView{;}
- (void)viewDidLoad{;}
- (void)viewWillAppear{;}
- (void)viewDidAppear{;}
- (void)viewWillDisappear{;}
- (void)viewDidDisappear{;}

-(void)requestData{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase getItemsWithCallback:^(id items) {
        id data = [me translateData:items];
        [me.interface setupData: data];
        [me.interface reloadData];
        [me.interface removeLoading];
    }];
}

-(void)saveData:(id)data{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase addItems:data WithCallback:^(id items) {
        [me.interface removeLoading];
    }];
}

@end
