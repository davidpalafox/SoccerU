//
//  User+CoreDataClass.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "User+CoreDataClass.h"
#import "DataModel.h"
#import "Player+CoreDataClass.h"
#import "AssistantCoach+CoreDataClass.h"
#import "HeadCoach+CoreDataClass.h"
#import "Team+CoreDataClass.h"

@implementation User

static User *theCurrentUser;

+(User *)currentUser
{
    if(theCurrentUser == nil)
    {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"User"];
        [request setFetchLimit:1];
        NSError *error;
        NSArray *results = [[[[DataModel sharedDataModel] persistentContainer] viewContext]executeFetchRequest:request error:&error];
        if (results.count > 0)
        {
            theCurrentUser = results[0];
        }
    }
    return theCurrentUser;
}
-(Team *)getTeam
{
    Team *team;
    if ([self isKindOfClass:[Player class]])
    {
        Player *player = (Player *)self;
        team = player.team;
    }
    else if ([self isKindOfClass:[HeadCoach class]])
    {
        HeadCoach *headCoach = (HeadCoach *)self;
        team = headCoach.team;
    }
    else if ([self isKindOfClass:[AssistantCoach class]])
    {
        AssistantCoach *assistantCoach = (AssistantCoach *)self;
        team = assistantCoach.team;
    }
    return team;
}

@end
