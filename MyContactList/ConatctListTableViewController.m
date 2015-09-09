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

@property (strong, nonatomic) NSMutableArray* contactList;

@end

@implementation ConatctListTableViewController


-(IBAction)unwinedToList:(UIStoryboardSegue*)segue {
    
    AddContactViewController* source = [segue sourceViewController];
    Contact* contact = source.contact;
    
    if (contact != nil) {
        
        [self.contactList addObject:contact];
        [self.tableView reloadData];
    }
    
}


-(void) loadInitialData {
    
    Contact* contact1 = [[Contact alloc] init];
    contact1.firstName = @"Roni";
    contact1.lastName = @"Sapirstein";
    contact1.phoneNumber = @"0544850955";
    contact1.emailAddress = @"roni.binenfeld@gmail.com";
    [self.contactList addObject:contact1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contactList = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

-(void)viewWillAppear:(BOOL)animated{
    
    AppDelegate* delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    if ([delegate shouldRefreshMainView])
        [self.tableView reloadData];
    
    [delegate setShouldRefreshMainView:NO];
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
    return [self.contactList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell"forIndexPath:indexPath];
    
    Contact* contact = [self.contactList objectAtIndex:indexPath.row];
    NSString* fullName = [[NSString alloc] initWithString:contact.firstName];
    fullName = [fullName stringByAppendingString:@" "];
    fullName = [fullName stringByAppendingString:contact.lastName];
    cell.textLabel.text = fullName;
    
    return cell;
}

/*- (void)layoutSubviews {
    [self refreshTableCells];
}

-(void) refreshTableCells{
    
}*/
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
    ViewContantViewController* viewContant = (ViewContantViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ViewContant"];

//    Contact* contact = self.contactList[indexPath.row];
//    viewContant.contact = contact;
  
    viewContant.contact = self.contactList[indexPath.row];
    
    [self.navigationController pushViewController:viewContant animated:YES];

}

@end
