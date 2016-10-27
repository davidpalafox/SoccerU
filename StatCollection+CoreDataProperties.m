//
//  StatCollection+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "StatCollection+CoreDataProperties.h"

@implementation StatCollection (CoreDataProperties)

+ (NSFetchRequest<StatCollection *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"StatCollection"];
}

@dynamic passesCompleted;
@dynamic passesIntercepted;
@dynamic advancedPassCollection;
@dynamic assistsCollection;
@dynamic crossesCollection;
@dynamic foulsCollection;
@dynamic goalsCollection;
@dynamic lostCollection;
@dynamic shotsOffGoalCollection;
@dynamic shotsOnGoalCollection;
@dynamic tacklesCollection;

@end
