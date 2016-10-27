//
//  Player+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Player+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Player (CoreDataProperties)

+ (NSFetchRequest<Player *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *number;
@property (nullable, nonatomic, retain) NSSet<IndividualStat *> *individualStatCollection;
@property (nullable, nonatomic, retain) Team *team;

@end

@interface Player (CoreDataGeneratedAccessors)

- (void)addIndividualStatCollectionObject:(IndividualStat *)value;
- (void)removeIndividualStatCollectionObject:(IndividualStat *)value;
- (void)addIndividualStatCollection:(NSSet<IndividualStat *> *)values;
- (void)removeIndividualStatCollection:(NSSet<IndividualStat *> *)values;

@end

NS_ASSUME_NONNULL_END
