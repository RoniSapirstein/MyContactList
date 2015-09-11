//
//  ContactViewController.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/9/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "ContactViewController.h"

#define K_VERTICAL_SPACE 80

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUILabels];
    [self createUITextFields];
}

-(void)createUILabels{
    
    CGFloat x = 20;
    CGFloat y = 100;
    CGFloat width = 250;
    CGFloat hight = 30;
    
    CGRect locationAndDimantion = CGRectMake(x, y, width, hight);
    _firstNameLabel = [self createLabel:locationAndDimantion labelText:@"First Name"];
    [self.view addSubview:_firstNameLabel];
    
    y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _lastNameLabel = [self createLabel:locationAndDimantion labelText:@"Last Name" ];
    [self.view addSubview:_lastNameLabel];

     y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _phoneNumberLabel = [self createLabel:locationAndDimantion labelText:@"Phone Number"];
    [self.view addSubview:_phoneNumberLabel];
    
     y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _emailAddressLabel = [self createLabel:locationAndDimantion labelText:@"Email Address"];
    [self.view addSubview:_emailAddressLabel];

}

-(void)createUITextFields{
    
    CGFloat x = 20;
    CGFloat y = 130;
    CGFloat width = 250;
    CGFloat hight = 30;
    
    
    CGRect locationAndDimantion = CGRectMake(x, y, width, hight);
    _firstNameTextField = [self createTextField:locationAndDimantion placeholder:@"First Name"];
    [self.view addSubview:_firstNameTextField];
    
    y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _lastNameTextField = [self createTextField:locationAndDimantion placeholder:@"Last Name" ];
    [self.view addSubview:_lastNameTextField];
    
    y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _phoneNumberTextField = [self createTextField:locationAndDimantion placeholder:@"Phone Number"];
    _phoneNumberTextField.keyboardType = UIKeyboardTypePhonePad;
    [self.view addSubview:_phoneNumberTextField];
    
    y += K_VERTICAL_SPACE;
    
    locationAndDimantion = CGRectMake(x, y, width, hight);
    _emailAddressTextField = [self createTextField:locationAndDimantion placeholder:@"Email Address"];
    _emailAddressTextField.keyboardType = UIKeyboardTypeEmailAddress;
    [self.view addSubview:_emailAddressTextField];
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UILabel*)createLabel:(CGRect)locationAndDimantion labelText:(NSString*)text{
   
    UILabel* newLabel = [[UILabel alloc]initWithFrame:locationAndDimantion];//Set frame of
    [newLabel setText:text];
    [newLabel setTextColor:[UIColor purpleColor]];
    [newLabel setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [newLabel setNumberOfLines:1];//Set number of lines in label.
    
    return newLabel;
}

-(UITextField*)createTextField:(CGRect)locationAndDimantion placeholder:(NSString*)text{
    
    UITextField* newTextField = [[UITextField alloc] initWithFrame:locationAndDimantion];
    newTextField.borderStyle = UITextBorderStyleRoundedRect;
    newTextField.font = [UIFont systemFontOfSize:15];
    newTextField.placeholder = text;
    newTextField.autocorrectionType = UITextAutocorrectionTypeNo;
    newTextField.keyboardType = UIKeyboardTypeDefault;
    newTextField.returnKeyType = UIReturnKeyDone;
    newTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    newTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    return newTextField;
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [_firstNameTextField becomeFirstResponder];
}

@end

@interface UINavigationController (RotationNone)
-(NSUInteger)supportedInterfaceOrientations;
@end

@implementation UINavigationController (RotationNone)
-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
@end

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


