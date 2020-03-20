//
//  ViewController.m
//  MPUpgradeDemo_plugin
//
//  Created by yangwei on 2019/3/28.
//  Copyright © 2019年 yangwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<AliUpgradeViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"UpgradeDemo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(30, 150, [UIScreen mainScreen].bounds.size.width-60, 44);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"检测升级：默认弹框提示" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(checkUpgradeDefault) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectOffset(button.frame, 0, 80);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"检测升级：自定义弹框图像和loading" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(checkUpgradeWithHeaderImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectOffset(button1.frame, 0, 80);
    button2.backgroundColor = [UIColor blueColor];
    [button2 setTitle:@"检测升级：自定义弹框UI" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(checkUpgradeWIthCustomUI) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

- (void)checkUpgradeDefault {
    [MPCheckUpgradeInterface sharedService].defaultUpdateInterval = 7;
    [[MPCheckUpgradeInterface sharedService] checkNewVersion];
}

- (void)checkUpgradeWithHeaderImage {
    MPCheckUpgradeInterface *upgradeInterface = [MPCheckUpgradeInterface sharedService];
    upgradeInterface.viewDelegate = self;
    [upgradeInterface checkNewVersion];
}

- (UIImage *)upgradeImageViewHeader{
    return APCommonUILoadImage(@"ilustration_ap_expection_alert");
}

- (void)showToastViewWith:(NSString *)message duration:(NSTimeInterval)timeInterval {
    [self showAlert:message];
}

- (void)showAlert:(NSString*)message {
    AUNoticeDialog* alertView = [[AUNoticeDialog alloc] initWithTitle:@"Information" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

- (void)checkUpgradeWIthCustomUI {
    [[MPCheckUpgradeInterface sharedService] checkUpgradeWith:^(NSDictionary *upgradeInfos) {
        [self showAlert:[upgradeInfos JSONString]];
    } failure:^(NSException *exception) {
        
    }];
    
}



@end
