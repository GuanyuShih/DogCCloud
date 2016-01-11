//
//  PhoneCallViewController.m
//  DogCloud
//
//  Created by Allen on 2016/1/11.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "PhoneCallViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PhoneCallViewController ()

@property (weak, nonatomic) IBOutlet UIButton *Button1;
@property (strong, nonatomic) IBOutlet UIButton *Buuton2;

@end

@implementation PhoneCallViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.Button1.layer.cornerRadius = self.Button1.bounds.size.width/2.0;
    self.Button2.layer.cornerRadius = self.Button2.bounds.size.width/2.0;
    
    self.Button1.layer.borderWidth = 1.0;
    self.Button2.layer.borderWidth = 1.0;
    
    self.Button1.layer.borderColor = self.Button1.titleLabel.textColor.CGColor;
    self.Button2.layer.borderWidth = 1.0f;
    
    self.Button1.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:35];
    self.Button2.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:35];
    self.Button2.layer.borderColor = [UIColor whiteColor].CGColor;
    self.Button2.layer.borderWidth = 1.0f;



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



- (IBAction) clearDisplay {
    
    display.text = @"";
}

- (IBAction) button1 {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction) button2 {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}
- (IBAction) button3 {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction) button4 {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction) button5 {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction) button6 {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction) button7 {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction) button8 {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction) button9 {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction) button0 {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction) buttonAsterisk {
    display.text=[NSString stringWithFormat:@"%@*",display.text];
}

- (IBAction) buttonPound {
    
    display.text=[NSString stringWithFormat:@"%@#",display.text];
    
}



@end
