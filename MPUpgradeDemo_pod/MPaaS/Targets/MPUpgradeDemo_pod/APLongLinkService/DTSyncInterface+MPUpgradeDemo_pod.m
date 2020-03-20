//
//  DTSyncInterface+MPUpgradeDemo_pod.m
//  MPUpgradeDemo_pod
//
//  Created by yangwei on 2019/08/01. All rights reserved.
//

#import "DTSyncInterface+MPUpgradeDemo_pod.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation DTSyncInterface (MPUpgradeDemo_pod)

- (NSString*)appId
{
    return @"570DA89281533";
}

- (NSString*)platform
{
    return @"IOS";
}

- (NSString*)workspaceId
{
    return @"default";
}

- (int)syncPort
{
    return 443;
}

- (NSString*)syncServer
{
    return @"cn-hangzhou-mss-link.cloud.alipay.com";
}

@end

#pragma clang diagnostic pop

