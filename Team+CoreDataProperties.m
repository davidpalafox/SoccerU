//
//  Team+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Team+CoreDataProperties.h"

@implementation Team (CoreDataProperties)

+ (NSFetchRequest<Team *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Team"];
}

@dynamic teamName;
@dynamic assistantCoachCollection;
@dynamic formationCollection;
@dynamic gameCollection;
@dynamic headCoach;
@dynamic opponentCollection;
@dynamic playerCollection;
@dynamic setPlayCollection;

@end
