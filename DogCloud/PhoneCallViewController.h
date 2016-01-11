//
//  PhoneCallViewController.h
//  DogCloud
//
//  Created by Allen on 2016/1/11.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface PhoneCallViewController : UIViewController {


    IBOutlet UITextField *display;
    NSString *storage;
}

@property (weak, nonatomic) IBOutlet UIButton *Button1;
@property (strong, nonatomic) IBOutlet UIButton *Buuton2;

 
- (IBAction) button1;
- (IBAction) button2;
- (IBAction) button3;
- (IBAction) button4;
- (IBAction) button5;
- (IBAction) button6;
- (IBAction) button7;
- (IBAction) button8;
- (IBAction) button9;
- (IBAction) button0;
- (IBAction) buttonAsterisk;
- (IBAction) buttonPound;
- (IBAction) clearDisplay;


                                                       
                                                       
@end
