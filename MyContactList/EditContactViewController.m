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
#import "AppDelegate.h"

@interface EditContactViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation EditContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTextFields];
    
}

-(void) setTextFields{
    super.firstNameTextField.text = _contact.firstName;
    super.lastNameTextField.text = _contact.lastName;
    super.phoneNumberTextField.text = _contact.phoneNumber;
    super.emailAddressTextField.text = _contact.emailAddress;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if(sender != _saveButton)
        return;

    if(super.firstNameTextField.text != _contact.firstName){
        _contact.firstName = super.firstNameTextField.text;
        _contact.contactChanged = YES;
    }
    
    if(super.lastNameTextField.text != _contact.lastName){
        _contact.lastName = super.lastNameTextField.text;
        _contact.contactChanged = YES;
    }
    
    if (super.phoneNumberTextField.text != _contact.phoneNumber){
        _contact.phoneNumber = super.phoneNumberTextField.text;
        _contact.contactChanged = YES;
    }
    
    if (super.emailAddressTextField.text != self.contact.emailAddress){
        _contact.emailAddress = super.emailAddressTextField.text;
        _contact.contactChanged = YES;
    }
    
}



@end
