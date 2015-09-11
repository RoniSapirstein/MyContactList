//
//  Contact.h
//  MyContactList
//
//  Created by Roni Binenfeld on 9/2/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject <NSCoding>

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* phoneNumber;
@property (nonatomic, strong) NSString* emailAddress;
@property (nonatomic, readwrite) bool contactChanged;


@end
