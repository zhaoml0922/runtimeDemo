//
//  Person.m
//  runtimeDemo
//
//  Created by zhaoml on 2018/5/24.
//  Copyright © 2018年 赵明亮. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

+(BOOL)resolveInstanceMethod:(SEL)sel {

    NSLog(@"%@",NSStringFromSelector(sel));
    
    class_addMethod(self, sel,(IMP) haha, "V@:");
    
    return [super resolveInstanceMethod:sel];
}

void haha(id self,SEL _cmd , NSString *str) {
    
    NSLog(@"哈哈哈哈 = %@ = %@",NSStringFromSelector(_cmd),str);
}


@end
