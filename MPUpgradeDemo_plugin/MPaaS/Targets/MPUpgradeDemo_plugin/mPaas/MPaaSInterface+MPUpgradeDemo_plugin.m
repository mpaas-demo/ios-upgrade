//
//  MPaaSInterface+MPUpgradeDemo_plugin.m
//  MPUpgradeDemo_plugin
//
//  Created by vivi.yw on 2019/08/08.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "MPaaSInterface+MPUpgradeDemo_plugin.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation MPaaSInterface (MPUpgradeDemo_plugin)

- (BOOL)enableSettingService
{
    return NO;
}

- (NSString *)userId
{
    return nil;
}

@end

#pragma clang diagnostic pop
