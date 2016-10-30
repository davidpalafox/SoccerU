//
//  SignUpVC.h
//  SoccerU
//
//  Created by Julie Palafox on 10/27/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "DataModel.h"
#import "Player+CoreDataClass.h"
#import "AssistantCoach+CoreDataClass.h"
#import "HeadCoach+CoreDataClass.h"

@interface SignUpVC : UIViewController <UITextFieldDelegate>
{
    DataModel *dataModel;
}

@property (weak, nonatomic) IBOutlet UISegmentedControl *userTypeSC;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTF;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTF;
@property (weak, nonatomic) IBOutlet UITextField *numberTF;
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;
- (IBAction)signUpSelected:(id)sender;
- (IBAction)userTypeSCSelected:(id)sender;

@end
