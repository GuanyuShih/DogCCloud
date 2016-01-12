//
//  KeyViewController.m
//  DogCloud
//
//  Created by Allen on 2016/1/12.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "KeyViewController.h"

@interface KeyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;
@property (weak, nonatomic) IBOutlet UIButton *button0;
@property (weak, nonatomic) IBOutlet UIButton *buttonAsterisk;
@property (weak, nonatomic) IBOutlet UIButton *buttonPound;

@end

@implementation KeyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*
    _button1.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    _button1.titleLabel.textAlignment = NSTextAlignmentCenter;
    [_button1 setTitle:@"1\nabc" forState:UIControlStateNormal];
*/
    _button1.backgroundColor = [UIColor grayColor];
    _button1.layer.cornerRadius = _button1.bounds.size.width/2.0;
    
    
    [_button1 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button1 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button1];
    

    _button2.backgroundColor = [UIColor grayColor];
    _button2.layer.cornerRadius = _button2.bounds.size.width/2.0;
    
    [_button2 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button2 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button2];
    

    _button3.backgroundColor = [UIColor grayColor];
    _button3.layer.cornerRadius = _button3.bounds.size.width/2.0;
    
    [_button3 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button3 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button3];
    

    _button4.backgroundColor = [UIColor grayColor];
    _button4.layer.cornerRadius = _button4.bounds.size.width/2.0;
    
    [_button4 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button4 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button4];
    

    _button5.backgroundColor = [UIColor grayColor];
    _button5.layer.cornerRadius = _button5.bounds.size.width/2.0;
    
    [_button5 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button5 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button5];
    

    _button6.backgroundColor = [UIColor grayColor];
    _button6.layer.cornerRadius = _button6.bounds.size.width/2.0;
    
    [_button6 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button6 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button6];
    

    _button7.backgroundColor = [UIColor grayColor];
    _button7.layer.cornerRadius = _button7.bounds.size.width/2.0;
    
    [_button7 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button7 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button7];
    

    _button8.backgroundColor = [UIColor grayColor];
    _button8.layer.cornerRadius = _button8.bounds.size.width/2.0;
    
    [_button8 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button8 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button8];
    

    _button9.backgroundColor = [UIColor grayColor];
    _button9.layer.cornerRadius = _button9.bounds.size.width/2.0;
    
    [_button9 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button9 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button9];
    

    _button0.backgroundColor = [UIColor grayColor];
    _button0.layer.cornerRadius = _button0.bounds.size.width/2.0;
    
    [_button0 addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_button0 addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button0];
    
    _buttonAsterisk.backgroundColor = [UIColor grayColor];
    _buttonAsterisk.layer.cornerRadius = _buttonAsterisk.bounds.size.width/2.0;
    
    [_buttonAsterisk addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_buttonAsterisk addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonAsterisk];
    
    _buttonPound.backgroundColor = [UIColor grayColor];
    _buttonPound.layer.cornerRadius = _buttonPound.bounds.size.width/2.0;
    
    [_buttonPound addTarget:self action:@selector(buttonBackGroundHighlighted:) forControlEvents:UIControlEventTouchDown];
    [_buttonPound addTarget:self action:@selector(buttonBackGroundNormal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonPound];
}

//  button1普通状态下的背景色
- (void)buttonBackGroundNormal:(UIButton *)sender
{
    sender.backgroundColor = [UIColor grayColor];
}

//  button1高亮状态下的背景色
- (void)buttonBackGroundHighlighted:(UIButton *)sender
{
    sender.backgroundColor = [UIColor clearColor];
}



- (IBAction) ClearDisplay {
    
    display.text = @"";
}

- (IBAction) Button1 {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction) Button2 {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}
- (IBAction) Button3 {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction) Button4 {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction) Button5 {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction) Button6 {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction) Button7 {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction) Button8 {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction) Button9 {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction) Button0 {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction) ButtonAsterisk {
    display.text=[NSString stringWithFormat:@"%@*",display.text];
}

- (IBAction) ButtonPound {
    
    display.text=[NSString stringWithFormat:@"%@#",display.text];
    
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

@end
