//
//  StatCollection+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "StatCollection+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface StatCollection (CoreDataProperties)

+ (NSFetchRequest<StatCollection *> *)fetchRequest;

@property (nonatomic) int16_t passesCompleted;
@property (nonatomic) int16_t passesIntercepted;
@property (nullable, nonatomic, retain) NSSet<AdvancedStat *> *advancedPassCollection;
@property (nullable, nonatomic, retain) NSSet<GoalAssistStat *> *assistsCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *crossesCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *foulsCollection;
@property (nullable, nonatomic, retain) NSSet<GoalAssistStat *> *goalsCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *lostCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *shotsOffGoalCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *shotsOnGoalCollection;
@property (nullable, nonatomic, retain) NSSet<Stat *> *tacklesCollection;

@end

@interface StatCollection (CoreDataGeneratedAccessors)

- (void)addAdvancedPassCollectionObject:(AdvancedStat *)value;
- (void)removeAdvancedPassCollectionObject:(AdvancedStat *)value;
- (void)addAdvancedPassCollection:(NSSet<AdvancedStat *> *)values;
- (void)removeAdvancedPassCollection:(NSSet<AdvancedStat *> *)values;

- (void)addAssistsCollectionObject:(GoalAssistStat *)value;
- (void)removeAssistsCollectionObject:(GoalAssistStat *)value;
- (void)addAssistsCollection:(NSSet<GoalAssistStat *> *)values;
- (void)removeAssistsCollection:(NSSet<GoalAssistStat *> *)values;

- (void)addCrossesCollectionObject:(Stat *)value;
- (void)removeCrossesCollectionObject:(Stat *)value;
- (void)addCrossesCollection:(NSSet<Stat *> *)values;
- (void)removeCrossesCollection:(NSSet<Stat *> *)values;

- (void)addFoulsCollectionObject:(Stat *)value;
- (void)removeFoulsCollectionObject:(Stat *)value;
- (void)addFoulsCollection:(NSSet<Stat *> *)values;
- (void)removeFoulsCollection:(NSSet<Stat *> *)values;

- (void)addGoalsCollectionObject:(GoalAssistStat *)value;
- (void)removeGoalsCollectionObject:(GoalAssistStat *)value;
- (void)addGoalsCollection:(NSSet<GoalAssistStat *> *)values;
- (void)removeGoalsCollection:(NSSet<GoalAssistStat *> *)values;

- (void)addLostCollectionObject:(Stat *)value;
- (void)removeLostCollectionObject:(Stat *)value;
- (void)addLostCollection:(NSSet<Stat *> *)values;
- (void)removeLostCollection:(NSSet<Stat *> *)values;

- (void)addShotsOffGoalCollectionObject:(Stat *)value;
- (void)removeShotsOffGoalCollectionObject:(Stat *)value;
- (void)addShotsOffGoalCollection:(NSSet<Stat *> *)values;
- (void)removeShotsOffGoalCollection:(NSSet<Stat *> *)values;

- (void)addShotsOnGoalCollectionObject:(Stat *)value;
- (void)removeShotsOnGoalCollectionObject:(Stat *)value;
- (void)addShotsOnGoalCollection:(NSSet<Stat *> *)values;
- (void)removeShotsOnGoalCollection:(NSSet<Stat *> *)values;

- (void)addTacklesCollectionObject:(Stat *)value;
- (void)removeTacklesCollectionObject:(Stat *)value;
- (void)addTacklesCollection:(NSSet<Stat *> *)values;
- (void)removeTacklesCollection:(NSSet<Stat *> *)values;

@end

NS_ASSUME_NONNULL_END
