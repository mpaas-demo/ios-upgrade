//
//  main.m
//  MPUpgradeDemo_pod
//
//  Created by yangwei on 2019/3/26.
//  Copyright © 2019 yangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    [MPAnalysisHelper enableCrashReporterService]; // USE MPAAS CRASH REPORTER
    enable_crash_reporter_service(); // USE MPAAS CRASH REPORTER
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
