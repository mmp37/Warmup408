//
//  DBManager.h
//  Warmup
//
//  Created by Matthew Parides on 9/22/13.
//  Copyright (c) 2013 Duke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject
{
    NSString *databasePath;
}

+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL) saveData:(NSString*)name
      password:(NSString*)password;
-(NSArray*) findByUserName:(NSString*)name;

@end