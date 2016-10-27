//
//  Team+CoreDataClass.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class AssistantCoach, Game, HeadCoach, OpponentTeam, Player;

NS_ASSUME_NONNULL_BEGIN

@interface Team : NSManagedObject

@end

NS_ASSUME_NONNULL_END

#import "Team+CoreDataProperties.h"
