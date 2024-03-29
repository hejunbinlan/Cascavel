//
//  BaseInteractorProtocol.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#ifndef ShopListViper_BaseInteractorProtocol_h
#define ShopListViper_BaseInteractorProtocol_h

typedef void (^ArrayCallback)(id items);


@protocol BaseInteractorProtocol <NSObject>

@required
- (NSString *)entityName;

@optional
- (void)getItemsWithCallback:(ArrayCallback)callback;
- (void)addItems:(id) items WithCallback:(ArrayCallback)callback;

@end
#endif
