//
//  GRORegisterViewController.m
//  GrouPic
//
//  Created by Jeffrey Adler on 9/9/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import "GRORegisterViewController.h"

@interface GRORegisterViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *phone;

@end

@implementation GRORegisterViewController

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
    
    self.password.returnKeyType = UIReturnKeyNext;
    self.password.delegate = self;
    
    self.phone.returnKeyType = UIReturnKeyDone;
    self.phone.delegate = self;
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"registerBG_bar"]];
}

- (BOOL)registerWithUsername:(NSString*)username Password:(NSString*)password Phone:(NSString*)phone {
    [[[UIAlertView alloc] initWithTitle:@"Can't Register" message:@"Feature isn't available yet" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil] show];
    
    return NO;
}

#pragma mark - button actions

- (IBAction)backPressed:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)registerPressed:(UIButton *)sender {
    [self registerWithUsername:self.username.text Password:self.password.text Phone:self.phone.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - textfield delegate methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    if (textField == self.username) {
        [self.password becomeFirstResponder];
    } else if (textField == self.password) {
        [self.phone becomeFirstResponder];
    } else {
        [self registerWithUsername:self.username.text Password:self.password.text Phone:self.phone.text];
    }
    
    return YES;
}

@end
