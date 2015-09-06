//
//  EditContactViewController.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/5/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "EditContactViewController.h"
#import "Contact.h"
#import "ViewContantViewController.h"

@interface EditContactViewController ()

@property (nonatomic, strong)UITextField* firstNameUITextField;
@property (nonatomic, strong)UITextField* lastNameUITextField;
@property (nonatomic, strong)UITextField* phoneNumberUITextField;
@property (nonatomic, strong)UITextField* emailAddressUITextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation EditContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.firstNameUITextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 160, 200, 30)];
    self.firstNameUITextField.borderStyle = UITextBorderStyleRoundedRect;
    self.firstNameUITextField.font = [UIFont systemFontOfSize:15];
    self.firstNameUITextField.placeholder = @"First Name";
    self.firstNameUITextField.text = self.contact.firstName;
    self.firstNameUITextField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.firstNameUITextField.keyboardType = UIKeyboardTypeDefault;
    self.firstNameUITextField.returnKeyType = UIReturnKeyDone;
    self.firstNameUITextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.firstNameUITextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:self.firstNameUITextField];
    
    self.lastNameUITextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 225, 200, 30)];
    self.lastNameUITextField.borderStyle = UITextBorderStyleRoundedRect;
    self.lastNameUITextField.font = [UIFont systemFontOfSize:15];
    self.lastNameUITextField.placeholder = @"Last Name";
    self.lastNameUITextField.text = self.contact.lastName;
    self.lastNameUITextField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.lastNameUITextField.keyboardType = UIKeyboardTypeDefault;
    self.lastNameUITextField.returnKeyType = UIReturnKeyDone;
    self.lastNameUITextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.lastNameUITextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:self.lastNameUITextField];
    
    self.phoneNumberUITextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 290, 200, 30)];
    self.phoneNumberUITextField.borderStyle = UITextBorderStyleRoundedRect;
    self.phoneNumberUITextField.font = [UIFont systemFontOfSize:15];
    self.phoneNumberUITextField.placeholder = @"Phone Number";
    self.phoneNumberUITextField.text = self.contact.phoneNumber;
    self.phoneNumberUITextField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.phoneNumberUITextField.keyboardType = UIKeyboardTypeDefault;
    self.phoneNumberUITextField.returnKeyType = UIReturnKeyDone;
    self.phoneNumberUITextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:self.phoneNumberUITextField];
    
    self.emailAddressUITextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 355, 200, 30)];
    self.emailAddressUITextField.borderStyle = UITextBorderStyleRoundedRect;
    self.emailAddressUITextField.font = [UIFont systemFontOfSize:15];
    self.emailAddressUITextField.placeholder = @"Email Address";
    self.emailAddressUITextField.text = self.contact.emailAddress;
    self.emailAddressUITextField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.emailAddressUITextField.keyboardType = UIKeyboardTypeDefault;
    self.emailAddressUITextField.returnKeyType = UIReturnKeyDone;
    self.emailAddressUITextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.emailAddressUITextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:self.emailAddressUITextField];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if(sender != self.saveButton)
        return;
    
    
    if(self.firstNameUITextField.text != self.contact.firstName)
        self.contact.firstName = self.firstNameUITextField.text;
    
    if(self.lastNameUITextField.text != self.contact.lastName)
        self.contact.lastName = self.lastNameUITextField.text;
    
    if (self.phoneNumberUITextField.text != self.contact.phoneNumber)
        self.contact.phoneNumber = self.phoneNumberUITextField.text;
    
    if (self.emailAddressUITextField.text != self.contact.emailAddress)
        self.contact.emailAddress = self.emailAddressUITextField.text;
    
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
