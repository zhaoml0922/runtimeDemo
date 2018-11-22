//
//  AppDelegate.h
//  runtimeDemo
//
//  Created by zhaoml on 2018/5/24.
//  Copyright © 2018年 赵明亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

