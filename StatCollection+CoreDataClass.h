//
//  StatCollection+CoreDataClass.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class AdvancedStat, GoalAssistStat, Stat;

NS_ASSUME_NONNULL_BEGIN

@interface StatCollection : NSManagedObject

@end

NS_ASSUME_NONNULL_END

#import "StatCollection+CoreDataProperties.h"
