//
//  Event.h
//  CoreDataDemo
//
//  Created by administrator on 08.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * time;
@property (nonatomic, retain) NSString * title;

@end
