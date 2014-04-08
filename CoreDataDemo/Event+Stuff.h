//
//  Event+Stuff.h
//  CoreDataDemo
//
//  Created by administrator on 08.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "Event.h"

@interface Event (Stuff)

+(instancetype)insertEventInContext:(NSManagedObjectContext*)context;
+(NSArray*)eventsInContext:(NSManagedObjectContext*)context;

@end
