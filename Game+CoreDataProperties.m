//
//  Game+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Game+CoreDataProperties.h"

@implementation Game (CoreDataProperties)

+ (NSFetchRequest<Game *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Game"];
}

@dynamic gameOver;
@dynamic gamePlaying;
@dynamic halfTimeReached;
@dynamic myScore;
@dynamic opponentScore;
@dynamic overTime;
@dynamic time;
@dynamic myPlayerStats;
@dynamic myTeam;
@dynamic myTeamStats;
@dynamic opponent;
@dynamic opponentPlayerStats;
@dynamic opponentTeamStats;

@end
