//
//  AppDelegate.h
//  appCoreData
//
//  Created by Felipe Hernandez on 20/03/21.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

