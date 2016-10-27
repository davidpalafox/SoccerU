//
//  AssistantCoach+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "AssistantCoach+CoreDataProperties.h"

@implementation AssistantCoach (CoreDataProperties)

+ (NSFetchRequest<AssistantCoach *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"AssistantCoach"];
}

@dynamic team;

@end
