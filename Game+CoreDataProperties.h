//
//  Game+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Game+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Game (CoreDataProperties)

+ (NSFetchRequest<Game *> *)fetchRequest;

@property (nonatomic) BOOL gameOver;
@property (nonatomic) BOOL gamePlaying;
@property (nonatomic) BOOL halfTimeReached;
@property (nonatomic) int16_t myScore;
@property (nonatomic) int16_t opponentScore;
@property (nonatomic) BOOL overTime;
@property (nonatomic) int16_t time;
@property (nullable, nonatomic, retain) NSSet<IndividualStat *> *myPlayerStats;
@property (nullable, nonatomic, retain) Team *myTeam;
@property (nullable, nonatomic, retain) TeamStat *myTeamStats;
@property (nullable, nonatomic, retain) OpponentTeam *opponent;
@property (nullable, nonatomic, retain) NSSet<IndividualStat *> *opponentPlayerStats;
@property (nullable, nonatomic, retain) TeamStat *opponentTeamStats;

@end

@interface Game (CoreDataGeneratedAccessors)

- (void)addMyPlayerStatsObject:(IndividualStat *)value;
- (void)removeMyPlayerStatsObject:(IndividualStat *)value;
- (void)addMyPlayerStats:(NSSet<IndividualStat *> *)values;
- (void)removeMyPlayerStats:(NSSet<IndividualStat *> *)values;

- (void)addOpponentPlayerStatsObject:(IndividualStat *)value;
- (void)removeOpponentPlayerStatsObject:(IndividualStat *)value;
- (void)addOpponentPlayerStats:(NSSet<IndividualStat *> *)values;
- (void)removeOpponentPlayerStats:(NSSet<IndividualStat *> *)values;

@end

NS_ASSUME_NONNULL_END
