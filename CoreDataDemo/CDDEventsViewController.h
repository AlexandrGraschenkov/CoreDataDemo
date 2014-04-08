//
//  CDDEventsViewController.h
//  CoreDataDemo
//
//  Created by administrator on 08.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@import CoreData;

@interface CDDEventsViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext *context;

@end
