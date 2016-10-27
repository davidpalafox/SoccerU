//
//  DataModel.h
//  SoccerU
//
//  Created by Julie Palafox on 10/25/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface DataModel : NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (strong) NSManagedObjectContext *moc;

- (void)saveContext;

+(DataModel *)sharedDataModel;

@end
