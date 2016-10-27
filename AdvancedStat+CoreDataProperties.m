//
//  AdvancedStat+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "AdvancedStat+CoreDataProperties.h"

@implementation AdvancedStat (CoreDataProperties)

+ (NSFetchRequest<AdvancedStat *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"AdvancedStat"];
}

@dynamic endingXCoordinate;
@dynamic endingYCoordinate;

@end
