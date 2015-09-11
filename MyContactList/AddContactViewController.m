//
//  AddContactViewController.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/1/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "AddContactViewController.h"
#import "AppDelegate.h"

@interface AddContactViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if (sender != _saveButton)
        return;

    _contact = [[Contact alloc] init];
    
    if (super.firstNameTextField.text.length > 0 )
        _contact.firstName = super.firstNameTextField.text;
        
    if (super.lastNameTextField.text.length > 0 )
        _contact.lastName = super.lastNameTextField.text;
    
    if (super.phoneNumberTextField.text.length > 0 )
        _contact.phoneNumber = super.phoneNumberTextField.text;
        
    if (super.emailAddressTextField.text.length > 0 )
        _contact.emailAddress = super.emailAddressTextField.text;
    
}


@end
