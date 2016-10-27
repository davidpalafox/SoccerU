//
//  IndividualStat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "IndividualStat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface IndividualStat (CoreDataProperties)

+ (NSFetchRequest<IndividualStat *> *)fetchRequest;

@property (nonatomic) int16_t time;
@property (nullable, nonatomic, retain) Game *myGame;
@property (nullable, nonatomic, retain) Game *opponentGame;
@property (nullable, nonatomic, retain) Player *player;

@end

NS_ASSUME_NONNULL_END
