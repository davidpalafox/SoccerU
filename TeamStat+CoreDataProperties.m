//
//  TeamStat+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "TeamStat+CoreDataProperties.h"

@implementation TeamStat (CoreDataProperties)

+ (NSFetchRequest<TeamStat *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"TeamStat"];
}

@dynamic possession;
@dynamic myGame;
@dynamic opponentGame;

@end
