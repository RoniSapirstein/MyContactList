//
//  Contact.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/2/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.firstName forKey:@"ContactFirstName"];
    [coder encodeObject:self.lastName forKey:@"ContactLastName"];
    [coder encodeObject:self.phoneNumber forKey:@"ContactPhoneNumber"];
    [coder encodeObject:self.emailAddress forKey:@"ConatctEmailAddress"];
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _firstName = [coder decodeObjectForKey:@"ContactFirstName"];
        _lastName = [coder decodeObjectForKey:@"ContactLastName"];
        _phoneNumber = [coder decodeObjectForKey:@"ContactPhoneNumber"];
        _emailAddress = [coder decodeObjectForKey:@"ContactEmailAddress"];
    }
    return self;
}
@end
