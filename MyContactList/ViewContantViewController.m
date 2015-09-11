//
//  ViewContantViewController.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/3/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "ViewContantViewController.h"
#import "EditContactViewController.h"

@interface ViewContantViewController ()


@end

@implementation ViewContantViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self   setTextFields];
    
}

-(void) setTextFields{
    super.firstNameTextField.text = _contact.firstName;
    [self disableTextField:super.firstNameTextField];
    super.lastNameTextField.text = _contact.lastName;
    [self disableTextField:super.lastNameTextField];
    super.phoneNumberTextField.text = _contact.phoneNumber;
    [self disableTextField:super.phoneNumberTextField];
    super.emailAddressTextField.text = _contact.emailAddress;
    [self disableTextField:super.emailAddressTextField];
}

-(void) disableTextField:(UITextField*) textField{
    textField.enabled = FALSE;
    textField.borderStyle = UITextBorderStyleNone;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwinedToViewContact:(UIStoryboardSegue*)segue{
    
    EditContactViewController* source = [segue sourceViewController];
    _contact = source.contact;
    [self setTextFields];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"editButtonSegue"])
    {
        UINavigationController* navigationController = [segue destinationViewController];
        EditContactViewController *dest = navigationController.viewControllers[0];
        
        dest.contact = _contact;
    }
}


@end
