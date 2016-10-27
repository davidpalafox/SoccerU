//
//  AdvancedStat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "AdvancedStat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface AdvancedStat (CoreDataProperties)

+ (NSFetchRequest<AdvancedStat *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *endingXCoordinate;
@property (nullable, nonatomic, copy) NSString *endingYCoordinate;

@end

NS_ASSUME_NONNULL_END
