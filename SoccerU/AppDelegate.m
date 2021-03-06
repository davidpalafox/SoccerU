//
//  AppDelegate.m
//  SoccerU
//
//  Created by Julie Palafox on 10/20/16.
//  Copyright © 2016 David_Palafox. All rights reserved.
//

#import "AppDelegate.h"
#import "DataModel.h"
#import "User+CoreDataClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // intialize Parse with credentials - DO NOT GIVE OUT MASTER KEY
    [Parse initializeWithConfiguration:[ParseClientConfiguration configurationWithBlock:^(id<ParseMutableClientConfiguration> configuration) {
        configuration.applicationId = @"GMS2015-2016";
        configuration.clientKey = @"MBK2015-2016";
        configuration.server = @"http://radiant-atoll-84605.herokuapp.com/parse";
    }]];
    
    
    //get managed object context to log sqllite file
    NSManagedObjectContext *moc = [[[DataModel sharedDataModel] persistentContainer] viewContext];
    NSPersistentStoreCoordinator *coordinator = moc.persistentStoreCoordinator;
    NSArray<NSPersistentStore*> *stores = coordinator.persistentStores;
    
    //log it
    for (NSPersistentStore *store in stores) {
        NSLog(@"%@", store.URL);
    }
    
    /*
    //clear core data
    NSPersistentStore *store = [stores lastObject];
    NSError *error;
    NSURL *storeURL = store.URL;
    [coordinator removePersistentStore:store error:&error];
    [[NSFileManager defaultManager] removeItemAtPath:storeURL.path error:&error];
    
    //Make new persistent store for future saves
    if (![coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // do something with the error
    }
     */
    
    
    
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *viewController;
    
    //if user already logged in - go to main tab page
    if ([User currentUser])
    {
        viewController = [storyboard instantiateViewControllerWithIdentifier:@"MainTab"];

    }
    //else - go to log in page
    else
    {
        viewController = [storyboard instantiateViewControllerWithIdentifier:@"NavControllerLogIn"];

    }
    //set root view controller
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    //[self saveContext];
}
@end
