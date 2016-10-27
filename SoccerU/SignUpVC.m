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
    
    //show nav bar
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    
    self.usernameTF.delegate = self;

}

-(void)textFieldDidBeginEditing:(UITextField *)textField { //Keyboard becomes visible
    if (textField == self.usernameTF)
    {
        self.usernameTF.text = @"";
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
