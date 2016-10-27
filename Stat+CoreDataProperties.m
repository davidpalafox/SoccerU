//
//  Stat+CoreDataProperties.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Stat+CoreDataProperties.h"

@implementation Stat (CoreDataProperties)

+ (NSFetchRequest<Stat *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Stat"];
}

@dynamic player;
@dynamic time;
@dynamic xCoordinate;
@dynamic yCoordinate;

@end
