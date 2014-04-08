//
//  CDDAppDelegate.m
//  CoreDataDemo
//
//  Created by administrator on 08.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "CDDAppDelegate.h"
#import "CDDEventsViewController.h"

@import CoreData;

@interface CDDAppDelegate()

@property (nonatomic, readonly) NSPersistentStoreCoordinator *storeCoordinator;

@property (nonatomic, readonly) NSManagedObjectContext *context;

@end

@implementation CDDAppDelegate

@synthesize storeCoordinator = _storeCoordinator;
@synthesize context = _context;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    UINavigationController *nvc = (UINavigationController*)self.window.rootViewController;
    
    CDDEventsViewController *vc = (CDDEventsViewController*)nvc.topViewController;
    
    vc.context = self.context;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

-(NSPersistentStoreCoordinator*)storeCoordinator
{
    if (_storeCoordinator)
    {
        return _storeCoordinator;
    }
    
    _storeCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[NSManagedObjectModel mergedModelFromBundles:@[ [NSBundle mainBundle]]]];

    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"MasterDetailDemo.sqlite"];
    
    NSError *error = nil;
    
    if (![_storeCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                         configuration:nil
                                                   URL:storeURL
                                               options:nil
                                                 error:&error])
    {
        abort();
    }
    return _storeCoordinator;
}

-(NSManagedObjectContext *)context
{
    if (_context)
    {
        return _context;
    }
    
    _context = [[NSManagedObjectContext alloc] init];
    _context.persistentStoreCoordinator = self.storeCoordinator;
    
    return _context;
}

@end
