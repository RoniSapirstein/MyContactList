    //
//  ConatctListTableViewController.m
//  MyContactList
//
//  Created by Roni Binenfeld on 9/1/15.
//  Copyright (c) 2015 Roni Binenfeld. All rights reserved.
//

#import "ConatctListTableViewController.h"
#import "Contact.h"
#import "AddContactViewController.h"
#import "ViewContantViewController.h"
#import "AppDelegate.h"

@interface ConatctListTableViewController ()
@property NSInteger viewedContactIndex;

@property (strong, nonatomic) NSMutableArray* contactList;

@end

@implementation ConatctListTableViewController


-(IBAction)unwinedToList:(UIStoryboardSegue*)segue {
    
    AddContactViewController* source = [segue sourceViewController];
    Contact* contact = source.contact;
    
    [self insertContactToList:contact];
}

-(void)insertContactToList:(Contact*)contact{
    
    if (contact != nil && contact.firstName.length > 0) {
        
        NSUInteger newIndex = [_contactList indexOfObject:contact inSortedRange:(NSRange){ 0, [self.contactList count]} options:NSBinarySearchingInsertionIndex usingComparator:^NSComparisonResult(Contact* contact1, Contact* contact2){
            return [contact1.firstName compare: contact2.firstName];
        }];
        
        [_contactList insertObject:contact atIndex:newIndex];
        [self.tableView reloadData];
    }

}

-(void) loadInitialData {
   
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"contactList.dat"];

    NSMutableArray* cotactListFromFile = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    if(cotactListFromFile)
        _contactList = cotactListFromFile;
    
    AppDelegate* appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.contactList = _contactList;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactList = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

-(void)viewWillAppear:(BOOL)animated{
 
    Contact* viewedContact = _contactList[_viewedContactIndex];
        
    if(viewedContact.contactChanged){
        [_contactList removeObjectAtIndex: _viewedContactIndex];
        [self insertContactToList:viewedContact];
        _viewedContactIndex = 0;
    }

    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_contactList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell"forIndexPath:indexPath];
    
    Contact* contact = [_contactList objectAtIndex:indexPath.row];
    if (contact.firstName){
        NSString* fullName = [[NSString alloc] initWithString:contact.firstName];
        if (contact.lastName) {
            fullName = [fullName stringByAppendingString:@" "];
            fullName = [fullName stringByAppendingString:contact.lastName];
        }
        cell.textLabel.text = fullName;
    }
    
    return cell;
}

#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
    ViewContantViewController* viewContant = (ViewContantViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ViewContant"];
  
    viewContant.contact = _contactList[indexPath.row];
    _viewedContactIndex = indexPath.row;
    
    [self.navigationController pushViewController:viewContant animated:YES];

}


@end
