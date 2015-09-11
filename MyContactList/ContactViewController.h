//
//  ContactViewController.h
//  MyContactList
//
//  Created by Roni Binenfeld on 9/9/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UIViewController

@property (strong, nonatomic) UILabel *firstNameLabel;
@property (strong, nonatomic) UILabel *lastNameLabel;
@property (strong, nonatomic) UILabel *phoneNumberLabel;
@property (strong, nonatomic) UILabel *emailAddressLabel;
@property (strong, nonatomic) UITextField *firstNameTextField;
@property (strong, nonatomic) UITextField *lastNameTextField;
@property (strong, nonatomic) UITextField *phoneNumberTextField;
@property (strong, nonatomic) UITextField *emailAddressTextField;

@end
