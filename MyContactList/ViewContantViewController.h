//
//  ViewContantViewController.h
//  MyContactList
//
//  Created by Roni Binenfeld on 9/3/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
#import "ContactViewController.h"

@interface ViewContantViewController : ContactViewController

-(IBAction)unwinedToViewContact:(UIStoryboardSegue*)segue;

@property Contact* contact;

@end
