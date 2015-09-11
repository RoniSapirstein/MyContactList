//
//  AddContactViewController.h
//  MyContactList
//
//  Created by Roni Binenfeld on 9/1/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
#import "ContactViewController.h"

@interface AddContactViewController : ContactViewController

@property (nonatomic, strong)Contact* contact;

@end
