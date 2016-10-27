//
//  LogInVC.m
//  SoccerU
//
//  Created by Julie Palafox on 10/25/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "LogInVC.h"
@interface LogInVC ()

@end

@implementation LogInVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // intialize core data model
    dataModel = [DataModel sharedDataModel];

    //adjust font sizes to fit device size
    [self adjustFontSizes];
    
    //set text field delegates
    [self setTextFieldDelegates];
}

-(void)viewWillAppear:(BOOL)animated
{
    //hide nav bar
    [[self navigationController] setNavigationBarHidden:YES animated:YES];

}

-(void)adjustFontSizes
{
    
}

-(void)setTextFieldDelegates
{
    self.userNameTF.delegate = self;
    self.passwordTF.delegate = self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField { //Keyboard becomes visible
    if (textField == self.userNameTF && [self.userNameTF.text isEqualToString:@"Username"])
    {
        //clear username text field
        self.userNameTF.text = @"";
        
    }
    else if (textField == self.passwordTF && [self.passwordTF.text isEqualToString:@"Password"])
    {
        //clear password text field
        self.passwordTF.text = @"";
        
        //make password text field secure
        self.passwordTF.secureTextEntry = YES;
    }
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.userNameTF && [self.userNameTF.text isEqualToString:@""])
    {
        //set user name tf to original
        self.userNameTF.text = @"Username";
        
    }
    else if (textField == self.passwordTF && [self.passwordTF.text isEqualToString:@""])
    {
        //set password tf to original
        self.passwordTF.text = @"Password";
        
        //show password text
        self.passwordTF.secureTextEntry = NO;
    }
}

-(IBAction)logInSelected:(id)sender
{
    //[self performSegueWithIdentifier:@"LogInToMain" sender:self];
    /*
    //attempt to log in wiht user credentials
    [PFUser logInWithUsernameInBackground:self.userNameTF.text password:self.passwordTF.text block:^(PFUser * _Nullable user, NSError * _Nullable error) {
        
        //user logged in successfully
        if (user)
        {
            //if logged in user is coach
            if ([user[@"isCoach"]  isEqual: @YES])
            {
                // problems now because don't know whether head or assistant - just log in as player for now
            }
            //is player
            else
            {
                Player *player = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:dataModel.moc];
                player.firstName = user[@"firstName"];
                player.lastName = user[@"lastName"];
                player.email = user.email;
                player.number = user[@"number"];
                
                [dataModel saveContext];
            }
        }
        //error logging in
        else
        {
            if(error)
            {
                if(error.code == 0000000000)
                {
                    
                }
            }
        }
    }];
     
     */
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
