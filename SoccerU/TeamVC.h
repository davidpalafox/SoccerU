//
//  TeamVC.h
//  SoccerU
//
//  Created by Julie Palafox on 10/29/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@class DataModel;
@class Team;
@class User;

@interface TeamVC : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    DataModel *dataModel;
    PFUser *onlineCurrentUser;
    User *localCurrentUser;
    Team *localTeam;
    NSArray *localTeamPlayerCollection;
    NSArray *localTeamCoachCollection;
}
@property (weak, nonatomic) IBOutlet UITableView *rosterTableView;
@property (weak, nonatomic) IBOutlet UILabel *teamNameLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *playerCoachSC;
- (IBAction)playerCoachSCChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *playerStatsButton;
- (IBAction)playerStatsSelected:(id)sender;

@end
