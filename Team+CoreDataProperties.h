//
//  Team+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Team+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Team (CoreDataProperties)

+ (NSFetchRequest<Team *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *teamName;
@property (nullable, nonatomic, retain) NSSet<AssistantCoach *> *assistantCoachCollection;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *formationCollection;
@property (nullable, nonatomic, retain) NSSet<Game *> *gameCollection;
@property (nullable, nonatomic, retain) HeadCoach *headCoach;
@property (nullable, nonatomic, retain) NSSet<OpponentTeam *> *opponentCollection;
@property (nullable, nonatomic, retain) NSSet<Player *> *playerCollection;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *setPlayCollection;

@end

@interface Team (CoreDataGeneratedAccessors)

- (void)addAssistantCoachCollectionObject:(AssistantCoach *)value;
- (void)removeAssistantCoachCollectionObject:(AssistantCoach *)value;
- (void)addAssistantCoachCollection:(NSSet<AssistantCoach *> *)values;
- (void)removeAssistantCoachCollection:(NSSet<AssistantCoach *> *)values;

- (void)addFormationCollectionObject:(NSManagedObject *)value;
- (void)removeFormationCollectionObject:(NSManagedObject *)value;
- (void)addFormationCollection:(NSSet<NSManagedObject *> *)values;
- (void)removeFormationCollection:(NSSet<NSManagedObject *> *)values;

- (void)addGameCollectionObject:(Game *)value;
- (void)removeGameCollectionObject:(Game *)value;
- (void)addGameCollection:(NSSet<Game *> *)values;
- (void)removeGameCollection:(NSSet<Game *> *)values;

- (void)addOpponentCollectionObject:(OpponentTeam *)value;
- (void)removeOpponentCollectionObject:(OpponentTeam *)value;
- (void)addOpponentCollection:(NSSet<OpponentTeam *> *)values;
- (void)removeOpponentCollection:(NSSet<OpponentTeam *> *)values;

- (void)addPlayerCollectionObject:(Player *)value;
- (void)removePlayerCollectionObject:(Player *)value;
- (void)addPlayerCollection:(NSSet<Player *> *)values;
- (void)removePlayerCollection:(NSSet<Player *> *)values;

- (void)addSetPlayCollectionObject:(NSManagedObject *)value;
- (void)removeSetPlayCollectionObject:(NSManagedObject *)value;
- (void)addSetPlayCollection:(NSSet<NSManagedObject *> *)values;
- (void)removeSetPlayCollection:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
