//
//  TeamStat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "TeamStat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface TeamStat (CoreDataProperties)

+ (NSFetchRequest<TeamStat *> *)fetchRequest;

@property (nonatomic) int16_t possession;
@property (nullable, nonatomic, retain) Game *myGame;
@property (nullable, nonatomic, retain) Game *opponentGame;

@end

NS_ASSUME_NONNULL_END
