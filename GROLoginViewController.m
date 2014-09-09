//
//  GROLoginViewController.m
//  GrouPic
//
//  Created by Jeffrey Adler on 9/8/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import "GROLoginViewController.h"

@interface GROLoginViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation GROLoginViewController

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.username.returnKeyType = UIReturnKeyNext;
    self.username.delegate = self;
    
    self.password.returnKeyType = UIReturnKeyDone;
    self.password.delegate = self;
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"registerBG_bar"]];
}

- (BOOL)loginWithUsername:(NSString*)username Password:(NSString*)password {
    if ([[self.username.text lowercaseString] isEqual:@"jeff"] && [[self.password.text lowercaseString] isEqualToString:@"123"]) {
        [self performSegueWithIdentifier:@"LoginSuccessfulSegue" sender:self];
        return YES;
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Failed Login" message:@"The username and password combination that you have entered is incorrect" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil] show];
    }
    return NO;
}

#pragma mark - button actions




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - textfield delegate methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    if (textField == self.username) {
        [self.password becomeFirstResponder];
    } else {
        [self loginWithUsername:self.username.text Password:self.password.text];
    }
    
    return YES;
}

@end
