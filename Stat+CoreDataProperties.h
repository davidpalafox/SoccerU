//
//  Stat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "Stat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Stat (CoreDataProperties)

+ (NSFetchRequest<Stat *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *player;
@property (nullable, nonatomic, copy) NSString *time;
@property (nonatomic) float xCoordinate;
@property (nonatomic) float yCoordinate;

@end

NS_ASSUME_NONNULL_END
