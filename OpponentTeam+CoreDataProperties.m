//
//  OpponentTeam+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "OpponentTeam+CoreDataProperties.h"

@implementation OpponentTeam (CoreDataProperties)

+ (NSFetchRequest<OpponentTeam *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"OpponentTeam"];
}

@dynamic playerCollection;
@dynamic gameCollection;

@end
