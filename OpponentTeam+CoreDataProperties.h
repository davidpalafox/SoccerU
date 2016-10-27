//
//  OpponentTeam+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "OpponentTeam+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface OpponentTeam (CoreDataProperties)

+ (NSFetchRequest<OpponentTeam *> *)fetchRequest;

@property (nullable, nonatomic, retain) NSObject *playerCollection;
@property (nullable, nonatomic, retain) Game *gameCollection;

@end

NS_ASSUME_NONNULL_END
