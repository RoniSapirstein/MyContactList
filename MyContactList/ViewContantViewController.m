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

@property (strong, nonatomic) UILabel* firstNameUILabel;
@property (strong, nonatomic) UILabel* lastNameUILabel;
@property (strong, nonatomic) UILabel* phoneNumberUILabel;
@property (strong, nonatomic) UILabel* emailAddressUILabel;


@end

@implementation ViewContantViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUILabels];
    
}

-(void)setUILabels{

    self.firstNameUILabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 145, 200, 50)];//Set frame of
    [self.firstNameUILabel setText:self.contact.firstName];//Set text in label.
    [self.firstNameUILabel setTextColor:[UIColor blackColor]];//Set text color in label.
    [self.firstNameUILabel setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [self.firstNameUILabel setNumberOfLines:1];//Set number of lines in label.
    [self.view addSubview:self.firstNameUILabel];//Add it to the view of your choice.

    self.lastNameUILabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 210, 200, 50)];//Set frame of
    [self.lastNameUILabel setText:self.contact.lastName];//Set text in label.
    [self.lastNameUILabel setTextColor:[UIColor blackColor]];//Set text color in label.
    [self.lastNameUILabel setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [self.lastNameUILabel setNumberOfLines:1];//Set number of lines in label.
    [self.view addSubview:self.lastNameUILabel];//Add it to the view of your choice.

    self.phoneNumberUILabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 275, 200, 50)];//Set frame of
    [self.phoneNumberUILabel setText:self.contact.phoneNumber];//Set text in label.
    [self.phoneNumberUILabel setTextColor:[UIColor blackColor]];//Set text color in label.
    [self.phoneNumberUILabel setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [self.phoneNumberUILabel setNumberOfLines:1];//Set number of lines in label.
    [self.view addSubview:self.phoneNumberUILabel];//Add it to the view of your choice.
    
    self.emailAddressUILabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 340, 200, 50)];//Set frame of
    [self.emailAddressUILabel setText:self.contact.emailAddress];//Set text in label.
    [self.emailAddressUILabel setTextColor:[UIColor blackColor]];//Set text color in label.
    [self.emailAddressUILabel setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [self.emailAddressUILabel setNumberOfLines:1];//Set number of lines in label.
    [self.view addSubview:self.emailAddressUILabel];//Add it to the view of your choice.
    
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwinedToViewContact:(UIStoryboardSegue*)segue{
    
    EditContactViewController* source = [segue sourceViewController];
    self.contact = source.contact;
    [self.firstNameUILabel setText:self.contact.firstName];
    [self.lastNameUILabel setText:self.contact.lastName];
    [self.phoneNumberUILabel setText:self.contact.phoneNumber];
    [self.emailAddressUILabel setText:self.contact.emailAddress];
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"editButtonSegue"])
    {
        UINavigationController* navigationController = [segue destinationViewController];
        EditContactViewController *dest = navigationController.viewControllers[0];
        
        dest.contact = self.contact;
    }
    
    
}

/*- (void)willMoveToParentViewController:(UIViewController *)parent{
    if (parent != nil){
        [parent refreshTableView];
    }*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
