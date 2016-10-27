//
//  GoalAssistStat+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "GoalAssistStat+CoreDataProperties.h"

@implementation GoalAssistStat (CoreDataProperties)

+ (NSFetchRequest<GoalAssistStat *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"GoalAssistStat"];
}

@dynamic goalOrAssist;

@end
