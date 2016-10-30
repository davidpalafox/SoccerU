//
//  AdvancedStat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/29/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "AdvancedStat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface AdvancedStat (CoreDataProperties)

+ (NSFetchRequest<AdvancedStat *> *)fetchRequest;

@property (nonatomic) float endingXCoordinate;
@property (nonatomic) float endingYCoordinate;

@end

NS_ASSUME_NONNULL_END
