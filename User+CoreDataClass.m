//
//  User+CoreDataClass.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "User+CoreDataClass.h"

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

@end
