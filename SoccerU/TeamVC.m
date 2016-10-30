//
//  TeamVC.m
//  SoccerU
//
//  Created by Julie Palafox on 10/29/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "TeamVC.h"

@interface TeamVC ()

@end

@implementation TeamVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)loadOnlineTeamInfo
{
    [PFCloud callFunctionInBackground:@"getMainTeamInfo" withParameters:@{@"teamId":@"vRdYL5xVMB"} block:^(id team, NSError * _Nullable error) {
        if (team)
        {
            //NSLog(@"%@",)
        }
        else
        {
            if (error)
            {
                if (error.code == 0000000)
                {
                    
                }
            }
        }
    }];
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
