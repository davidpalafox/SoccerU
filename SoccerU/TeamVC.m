//
//  TeamVC.m
//  SoccerU
//
//  Created by Julie Palafox on 10/29/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "TeamVC.h"
#import "DataModel.h"
#import "User+CoreDataClass.h"
#import "Player+CoreDataClass.h"
#import "AssistantCoach+CoreDataClass.h"
#import "HeadCoach+CoreDataClass.h"
#import "Team+CoreDataClass.h"

@interface TeamVC ()

@end

@implementation TeamVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set Data Model
    dataModel = [DataModel sharedDataModel];
    
    //set online user
    onlineCurrentUser = [PFUser currentUser];
    
    //set local user
    localCurrentUser = [User currentUser];
    
    //set local team
    localTeam = [localCurrentUser getTeam];
    
    //load table views
    [self setTableViewProperties];
    
    //if local team is nil - load online team
    if (!localTeam)
    {
        [self loadOnlineTeamInfo];
    }
    //else - set arrays for team collections and reload UITableViews
    else
    {
        self.teamNameLabel.text = localTeam.teamName;
        
        localTeamPlayerCollection = [localTeam.playerCollection allObjects];
        localTeamCoachCollection = [@[localTeam.headCoach] arrayByAddingObjectsFromArray:[localTeam.assistantCoachCollection allObjects]];
        
        [self.rosterTableView reloadData];
        
    }
}

-(void)loadOnlineTeamInfo
{
    //online team pointer to access team objectId
    PFObject *onlineTeamPointer = onlineCurrentUser[@"team"];
    
    //call function from server to get team information
    [PFCloud callFunctionInBackground:@"getMainTeamInfo" withParameters:@{@"teamId":onlineTeamPointer.objectId} block:^(PFObject *team, NSError * _Nullable error) {
        if (team)
        {
            //create new local team
            localTeam = [NSEntityDescription insertNewObjectForEntityForName:@"Team" inManagedObjectContext:dataModel.moc];
            
            //add team name
            localTeam.teamName = team[@"teamName"];
            
            //add players to team from online
            for (PFUser *onlinePlayer in team[@"playerCollection"])
            {
                // if online current user is player - add local current user to team player collection
                if ([onlinePlayer.objectId isEqualToString:onlineCurrentUser.objectId])
                {
                    [localTeam addPlayerCollectionObject:(Player *)localCurrentUser];
                }
                //else - create new local player
                else
                {
                    //create new local player and set properties
                    Player *localPlayer = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:dataModel.moc];
                    localPlayer.firstName = onlinePlayer[@"firstName"];
                    localPlayer.lastName = onlinePlayer[@"lastName"];
                    localPlayer.email = onlinePlayer.email;
                    localPlayer.number = onlinePlayer[@"number"];
                    
                    //add local player to team - relationship has inverse
                    [localTeam addPlayerCollectionObject:localPlayer];
                }
                
            }
            
            //add assitants to team from online
            for (PFUser *onlineAssistantCoach in team[@"assistantCoachCollection"])
            {
                // if online current user is a.s. - add local current user to team a.c. collection
                if ([onlineAssistantCoach.objectId isEqualToString:onlineCurrentUser.objectId])
                {
                    [localTeam addAssistantCoachCollectionObject:(AssistantCoach *)localCurrentUser];
                }
                // else - create new local assistant head coach
                else
                {
                    //create new local as and set properties
                    AssistantCoach *localAssistantCoach = [NSEntityDescription insertNewObjectForEntityForName:@"AssistantCoach" inManagedObjectContext:dataModel.moc];
                    localAssistantCoach.firstName = onlineAssistantCoach[@"firstName"];
                    localAssistantCoach.lastName = onlineAssistantCoach[@"lastName"];
                    localAssistantCoach.email = onlineAssistantCoach.email;
                    
                    //add local as to as collection
                    [localTeam addAssistantCoachCollectionObject:localAssistantCoach];
                }
            }

            //add head coach from online
            PFUser *onlineHeadCoach = team[@"headCoach"];
            
            // if online current user is head coach - add local current user as head coach of team
            if ([onlineHeadCoach.objectId isEqualToString:onlineCurrentUser.objectId])
            {
                localTeam.headCoach = (HeadCoach *)localCurrentUser;
            }
            // else - create new local head coach
            else
            {
                //create new local head coach and set propeties
                HeadCoach *localHeadCoach = [NSEntityDescription insertNewObjectForEntityForName:@"HeadCoach" inManagedObjectContext:dataModel.moc];
                localHeadCoach.firstName = onlineHeadCoach[@"firstName"];
                localHeadCoach.lastName = onlineHeadCoach[@"lastName"];
                localHeadCoach.email = onlineHeadCoach.email;
                
                localTeam.headCoach = localHeadCoach;
            }
            
            //save changes to local database
            [dataModel saveContext];
            
            //set team name label
            self.teamNameLabel.text = localTeam.teamName;
            
            //set arrays for team collections
            localTeamPlayerCollection = [localTeam.playerCollection allObjects];
            localTeamCoachCollection = [@[localTeam.headCoach] arrayByAddingObjectsFromArray:[localTeam.assistantCoachCollection allObjects]];
            
            //reload table views
            [self.rosterTableView reloadData];
            
        }
        else
        {
            if (error)
            {
                NSLog(@"%@", error);
                if (error.code == 0000000)
                {
                    
                }
            }
        }
    }];
}

-(void)setTableViewProperties
{
    self.rosterTableView.delegate = self;
    self.rosterTableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.playerCoachSC.selectedSegmentIndex == 0)
    {
        //return number of players in collection
        return localTeamPlayerCollection.count;
    }
    else
    {
        //return number of coaches - head and assistants
        return localTeamCoachCollection.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (self.playerCoachSC.selectedSegmentIndex == 0)
    {
        //give player name and number for text
        Player *player = localTeamPlayerCollection[indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"#%@ %@ %@",player.number, player.firstName, player.lastName];
    }
    else
    {
        //give coach name
        User *coach = localTeamCoachCollection[indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", coach.firstName, coach.lastName];
    }
    
    //set text label color and font
    cell.textLabel.textColor = UIColor.whiteColor;
    cell.textLabel.font = [UIFont fontWithName:@"Futura-Medium" size:14.0];
    
    //adjust cell so separtor line has no margin
    cell.preservesSuperviewLayoutMargins = false;
    cell.separatorInset = UIEdgeInsetsZero;
    cell.layoutMargins = UIEdgeInsetsZero;
    
    return cell;
}

- (IBAction)playerCoachSCChanged:(id)sender {
   //hide player stats button if coaches are shown
    if (self.playerCoachSC.selectedSegmentIndex == 0)
    {
        self.playerStatsButton.hidden = NO;
    }
    else
    {
        self.playerStatsButton.hidden = YES;
    }
    
    //reload roster tableview with either coaches or players
    [self.rosterTableView reloadData];
}


- (IBAction)playerStatsSelected:(id)sender {

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
