//
//  EasySetupViewController.m
//  DogCloud
//
//  Created by Allen on 2016/1/11.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "EasySetupViewController.h"
#import "RNBlurModalView.h"

@interface EasySetupViewController ()

@end

@implementation EasySetupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)done:(id)sender {
    
    /*
     
     TransparentViewController_Help_2 * testVC = [TransparentViewController_Help_2 new];
     
     self.definesPresentationContext = YES; //self is presenting view controller
     testVC.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
     //    testVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
     UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:testVC];
     nav.modalPresentationStyle = UIModalPresentationOverCurrentContext;
     nav.view.backgroundColor = [UIColor clearColor];
     [self presentViewController:nav animated:YES completion:nil];
     
     */
    
    BOOL useCustomView = NO;
    
    RNBlurModalView *modal;
    if (useCustomView) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        view.backgroundColor = [UIColor redColor];
        view.layer.cornerRadius = 5.f;
        view.layer.borderColor = [UIColor blackColor].CGColor;
        view.layer.borderWidth = 5.f;
        
        modal = [[RNBlurModalView alloc] initWithView:view];
    }
    else {
        modal = [[RNBlurModalView alloc] initWithTitle:@"功能說明" message:@"1. 為攝像頭選擇網路並輸入正確的WiFi密碼以生成二維碼，二維碼的信息包括網路名稱和網路密碼。\n \n 2. 手機和攝像頭連接的網路不需要是同一網路，保證網路可用就能正常使用"];
        modal.defaultHideBlock = ^{
            NSLog(@"Code called after the modal view is hidden");
        };
    }
    //    modal.dismissButtonRight = YES;
    [modal show];
}

@end
