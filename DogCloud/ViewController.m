//
//  ViewController.m
//  TCCloudPlayerSDKTest
//
//  Created by ximilu on 15/4/17.
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "ViewController.h"
#import "TCCloudPlayerSDK.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

//
//-(void)loadView
//{
//    [super loadView];
//
//    self.view.backgroundColor = [UIColor whiteColor];
//
//    UIButton* playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    playBtn.frame = CGRectMake(150, 100, 50, 25);
//    playBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
//    [playBtn setTitle:@"play" forState:UIControlStateNormal];
//    [playBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    playBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//    [playBtn addTarget:self action:@selector(onPlayBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:playBtn];
//
//
//    playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    playBtn.frame = CGRectMake(150, 160, 100, 25);
//    playBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
//    [playBtn setTitle:@"push Play" forState:UIControlStateNormal];
//    [playBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    playBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//    [playBtn addTarget:self action:@selector(onPushPlayBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:playBtn];
//
//
//    playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    playBtn.frame = CGRectMake(150, 220, 100, 25);
//    playBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
//    [playBtn setTitle:@"custom push Play" forState:UIControlStateNormal];
//    [playBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    playBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//    [playBtn addTarget:self action:@selector(onCustomPushPlayBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:playBtn];
//
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playstateChangeNotification:) name:TCCloudPlayStateChangeNotification object:nil];
//}
//
//- (void)playstateChangeNotification:(NSNotification *)notice
//{
//    printf("");
//}


- (IBAction)onPlayBtnClick
{
    NSMutableArray* mutlArray = [NSMutableArray array];
    TCCloudPlayerVideoUrlInfo* info = [[TCCloudPlayerVideoUrlInfo alloc]init];
    info.videoUrlTypeName = @"原始";
    info.videoUrl = [NSURL URLWithString:@"http://2527.vod.myqcloud.com/2527_117134a2343111e5b8f5bdca6cb9f38c.f20.mp4"];
    [mutlArray addObject:info];
    
    TCCloudPlayerVideoUrlInfo* info1 = [[TCCloudPlayerVideoUrlInfo alloc]init];
    info1.videoUrlTypeName = @"标清";
    info1.videoUrl = [NSURL URLWithString:@"http://2527.vod.myqcloud.com/2527_117134a2343111e5b8f5bdca6cb9f38c.f30.mp4"];
    [mutlArray addObject:info1];
    
    [TCCloudPlayerSDK playVideo:@"testAppID"
                    videoFileID:@"testVideoFileID"
                      videoName:@"倒霉熊"
                      videoUrls:mutlArray
                 limitedSeconds:0
           defaultPlayUrlsIndex:0
               inViewController:self];
}

@end
