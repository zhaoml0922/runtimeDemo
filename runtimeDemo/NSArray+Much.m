//
//  NSArray+Much.m
//  runtimeDemo
//
//  Created by zhaoml on 2018/5/24.
//  Copyright © 2018年 赵明亮. All rights reserved.
//

#import "NSArray+Much.h"
#import <objc/runtime.h>
@implementation NSArray (Much)

+ (void)load{
    
    NSString *className = NSStringFromClass(self.class);
    NSLog(@"classname %@", className);
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class cla = NSClassFromString(@"__NSArrayI");
        Method originalMethod = class_getInstanceMethod(cla, @selector(objectAtIndex:));
        Method swizzledMethod = class_getInstanceMethod(cla, @selector(zml_objectAtIndex:));
        method_exchangeImplementations(originalMethod, swizzledMethod);
    });
}

- (id )zml_objectAtIndex:(NSUInteger)index {
    if (self.count-1 < index) {
        return nil;
    } else {
        return [self zml_objectAtIndex:index];
    }
    return nil;
}

@end
