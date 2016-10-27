//
//  Game+CoreDataClass.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class IndividualStat, OpponentTeam, Team, TeamStat;

NS_ASSUME_NONNULL_BEGIN

@interface Game : NSManagedObject

@end

NS_ASSUME_NONNULL_END

#import "Game+CoreDataProperties.h"
