//
//  HeadCoach+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "HeadCoach+CoreDataProperties.h"

@implementation HeadCoach (CoreDataProperties)

+ (NSFetchRequest<HeadCoach *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"HeadCoach"];
}

@dynamic team;

@end
