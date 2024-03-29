//
//  AddItemPresenter.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "AddItemPresenter.h"
#import "Wireframe.h"
#import "Item.h"

@implementation AddItemPresenter

- (void)saveData:(NSArray *)data{
    Item *item = [[Item alloc] init];
    item.name = data[0];
    item.value = [data[1] integerValue];
    
    NSArray *items = [NSArray arrayWithObjects:item, nil];
    [super saveData:items];
    [Wireframe backFrom:self.interface];
}

@end
