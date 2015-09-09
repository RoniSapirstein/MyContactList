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
@property (weak, nonatomic) IBOutlet UITextField *firstName;

@property (weak, nonatomic) IBOutlet UITextField *lastName;

@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *emailAddress;
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
      
    self.contact = [[Contact alloc] init];
    
    if (self.firstName.text.length > 0 )
        self.contact.firstName = self.firstName.text;
        
    if (self.lastName.text.length > 0 )
        self.contact.lastName = self.lastName.text;
    
    if (self.phoneNumber.text.length > 0 )
        self.contact.phoneNumber = self.phoneNumber.text;
        
    if (self.emailAddress.text.length > 0 )
        self.contact.emailAddress = self.emailAddress.text;
    
}


@end
