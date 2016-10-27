//
//  IndividualStat+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "IndividualStat+CoreDataProperties.h"

@implementation IndividualStat (CoreDataProperties)

+ (NSFetchRequest<IndividualStat *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"IndividualStat"];
}

@dynamic time;
@dynamic myGame;
@dynamic opponentGame;
@dynamic player;

@end
