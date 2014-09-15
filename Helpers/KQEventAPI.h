//
//  EventAPI.h
//  Events
//
//  Created by Abraao Barros Lacerda on 18/08/14.
//  Copyright (c) 2014 Teknowledge Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KQURLConnectHelper.h"

@interface KQEventAPI : NSMutableDictionary{
    KQURLConnectHelper * URLConnectHelper;
}
@property (nonatomic, retain) KQURLConnectHelper * urlConnectHelper;
@property (nonatomic, strong) NSMutableDictionary *data;

- (id)initWithDataAssyncWithStart:(void (^)(void))startHandler finishProcess:(void (^)(void))finishHandler errorHandler:(void (^)(void))errorHandler;
//- (void)loadData:(void (^)())finishHandler startHandler:(void (^)())startHandler;
- (void)reloadData:(void (^)())finishHandler
        startHandler:(void (^)())startHandler
        errorHandler:(void (^)())errorHandler;
- (void)getImageFromUrl:(NSString *)url
            finishHandler:(void (^)(NSData *))finishHandler
             startHandler:(void (^)())startHandler
             errorHandler:(void (^)())errorHandler;



@end
