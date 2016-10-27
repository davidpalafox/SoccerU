//
//  User+CoreDataClass.h
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "DataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSManagedObject

+(User *)currentUser;

@end

NS_ASSUME_NONNULL_END

#import "User+CoreDataProperties.h"
