//
//  SignUpVC.m
//  SoccerU
//
//  Created by Julie Palafox on 10/27/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "SignUpVC.h"

@interface SignUpVC ()

@end

@implementation SignUpVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // intialize core data model
    dataModel = [DataModel sharedDataModel];
    
    //show nav bar
    [[self navigationController] setNavigationBarHidden:NO animated:YES];

    //adjust fonts to fit device size
    [self adjustFontSizes];

    
    //set text field delegates
    [self setTextFieldDelegates];
}

-(void)adjustFontSizes
{
    
}

-(void)setTextFieldDelegates
{
    self.firstNameTF.delegate = self;
    self.lastNameTF.delegate = self;
    self.emailTF.delegate =self;
    self.usernameTF.delegate = self;
    self.passwordTF.delegate = self;
    self.confirmPasswordTF.delegate = self;
    self.numberTF.delegate = self;
}

//once a text field is selected, if text is default, then clear for typing
-(void)textFieldDidBeginEditing:(UITextField *)textField { //Keyboard becomes visible
    if (textField == self.firstNameTF && [self.firstNameTF.text isEqualToString:@"First Name"])
    {
        //clear first name text field
        self.firstNameTF.text = @"";
        
    }
    else if (textField == self.lastNameTF && [self.lastNameTF.text isEqualToString:@"Last Name"])
    {
        //clear last name text field
        self.lastNameTF.text = @"";
    }
    else if (textField == self.emailTF && [self.emailTF.text isEqualToString:@"Email"])
    {
        //clear email text field
        self.emailTF.text = @"";
        
    }
    else if (textField == self.usernameTF && [self.usernameTF.text isEqualToString:@"Username"])
    {
        //clear username text field
        self.usernameTF.text = @"";
        
    }
    else if (textField == self.passwordTF && [self.passwordTF.text isEqualToString:@"Password"])
    {
        //clear password text field
        self.passwordTF.text = @"";
        
        //make password text field secure
        self.passwordTF.secureTextEntry = YES;
    }
    else if (textField == self.confirmPasswordTF && [self.confirmPasswordTF.text isEqualToString:@"Confirm Password"])
    {
        //clear confirm password text field
        self.confirmPasswordTF.text = @"";
        
        //make confirm password text field secure
        self.confirmPasswordTF.secureTextEntry = YES;
    }
    else if (textField == self.numberTF && [self.numberTF.text isEqualToString:@"Number"])
    {
        //clear number text field
        self.numberTF.text = @"";
    }
}

//once a text field is deselected, if text is clear, go back to default
-(void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == self.firstNameTF && [self.firstNameTF.text isEqualToString:@""])
    {
        //set first name text field to defaults
        self.firstNameTF.text = @"First Name";
        
    }
    else if (textField == self.lastNameTF && [self.lastNameTF.text isEqualToString:@""])
    {
        //set last name text field to default
        self.lastNameTF.text = @"Last Name";
    }
    else if (textField == self.emailTF && [self.emailTF.text isEqualToString:@""])
    {
        //set email text field to default
        self.emailTF.text = @"Email";
        
    }
    else if (textField == self.usernameTF && [self.usernameTF.text isEqualToString:@""])
    {
        //set username text field to default
        self.usernameTF.text = @"Username";
        
    }
    else if (textField == self.passwordTF && [self.passwordTF.text isEqualToString:@""])
    {
        //set password text field to defautl
        self.passwordTF.text = @"Password";
        
        //show password text field
        self.passwordTF.secureTextEntry = NO;
    }
    else if (textField == self.confirmPasswordTF && [self.confirmPasswordTF.text isEqualToString:@""])
    {
        //set confirm password text field to default
        self.confirmPasswordTF.text = @"Confirm Password";
        
        //show confirm password text field
        self.confirmPasswordTF.secureTextEntry = NO;
    }
    else if (textField == self.numberTF && [self.numberTF.text isEqualToString:@""])
    {
        //set number text field to default
        self.numberTF.text = @"Number";
    }
}

- (IBAction)signUpSelected:(id)sender {
    //check if all fields are filled in
    if ([self.firstNameTF.text isEqualToString:@""]      ||
        [self.lastNameTF.text isEqualToString:@""]       ||
        [self.emailTF.text isEqualToString:@""]          ||
        [self.usernameTF.text isEqualToString:@""]       ||
        [self.passwordTF.text isEqualToString:@""]       ||
        [self.confirmPasswordTF.text isEqualToString:@""]||
        [self.firstNameTF.text isEqualToString:@"First Name"]            ||
        [self.lastNameTF.text isEqualToString:@"Last Name"]              ||
        [self.emailTF.text isEqualToString:@"Email"]                     ||
        [self.usernameTF.text isEqualToString:@"Username"]               ||
        [self.passwordTF.text isEqualToString:@"Password"]               ||
        [self.confirmPasswordTF.text isEqualToString:@"Confirm Password"]||
        (([self.numberTF.text isEqualToString:@""]  || [self.numberTF.text isEqualToString:@"Number"])&&
          self.userTypeSC.selectedSegmentIndex == 0))
    {
        //alert viewer that they must fill in all fields
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
        message:@"Must Fill In All Fields" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:
        UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    //check if password fields are same
    else if (![self.passwordTF.text isEqualToString:self.confirmPasswordTF.text])
    {
        //alert user that pasword fields do not match
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                       message:@"Password and Confirm Password Do Not Match" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:
                                        UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];

    }
    else
    {
        /*
        //create new online user
        PFUser *newUser = [PFUser user];
        
        //fill in credentials
        newUser[@"userType"] = [NSNumber numberWithInteger:self.userTypeSC.selectedSegmentIndex];
        newUser[@"firstName"] = self.firstNameTF.text;
        newUser[@"lastName"] = self.lastNameTF.text;
        newUser.email = self.emailTF.text;
        newUser.username = self.usernameTF.text;
        newUser.password = self.passwordTF.text;
        
        //if user is player - add number field
        if (self.userTypeSC.selectedSegmentIndex == 0)
        {
            newUser[@"number"] = self.numberTF.text;
        }
        
        //attempt to sign up in background
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded)
            {
                //player user type selected
                if (self.userTypeSC.selectedSegmentIndex == 0)
                {
                    //create new local player
                    Player *player = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:dataModel.moc];
                    player.firstName = self.firstNameTF.text;
                    player.lastName = self.lastNameTF.text;
                    player.email = self.emailTF.text;
                    player.number = self.numberTF.text;
                    
                    //save local core data
                    [dataModel saveContext];
                }
                //head coach user type selected
                else if (self.userTypeSC.selectedSegmentIndex == 1)
                {
                    //create new local head coach
                    HeadCoach *headCoach = [NSEntityDescription insertNewObjectForEntityForName:@"HeadCoach" inManagedObjectContext:dataModel.moc];
                    headCoach.firstName = self.firstNameTF.text;
                    headCoach.lastName = self.lastNameTF.text;
                    headCoach.email = self.emailTF.text;
                    
                    //save local core data
                    [dataModel saveContext];
                }
                //assistant coach user type selected
                else if (self.userTypeSC.selectedSegmentIndex == 2)
                {
                    //create new local assistant coach
                    AssistantCoach *assistantCoach = [NSEntityDescription insertNewObjectForEntityForName:@"AssistantCoach" inManagedObjectContext:dataModel.moc];
                    assistantCoach.firstName = self.firstNameTF.text;
                    assistantCoach.lastName = self.lastNameTF.text;
                    assistantCoach.email = self.emailTF.text;
                    
                    //save local core data
                    [dataModel saveContext];
                }
            }
            else
            {
                if (error)
                {
                    if(error.code == 000000)
                    {
                        
                    }
                }
            }
        }];
        */
    }
    
}

//action for value change in user type segmented control
- (IBAction)userTypeSCSelected:(id)sender {
    //if index is 0 - player - then show numbertf; else, hide
    if (self.userTypeSC.selectedSegmentIndex == 0)
    {
        self.numberTF.hidden = NO;
    }
    else
    {
        self.numberTF.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
