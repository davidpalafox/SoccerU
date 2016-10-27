//
//  GoalAssistStat+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "GoalAssistStat+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface GoalAssistStat (CoreDataProperties)

+ (NSFetchRequest<GoalAssistStat *> *)fetchRequest;

@property (nullable, nonatomic, retain) GoalAssistStat *goalOrAssist;

@end

NS_ASSUME_NONNULL_END
