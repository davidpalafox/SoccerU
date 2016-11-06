//
//  LogInVC.h
//  SoccerU
//
//  Created by Julie Palafox on 10/25/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@class DataModel;

@interface LogInVC : UIViewController <UITextFieldDelegate>
{
    DataModel *dataModel;
}

@property (weak, nonatomic) IBOutlet UITextField *userNameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@end
