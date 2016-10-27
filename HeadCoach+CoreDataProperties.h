//
//  HeadCoach+CoreDataProperties.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "HeadCoach+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface HeadCoach (CoreDataProperties)

+ (NSFetchRequest<HeadCoach *> *)fetchRequest;

@property (nullable, nonatomic, retain) Team *team;

@end

NS_ASSUME_NONNULL_END
