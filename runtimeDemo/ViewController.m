//
//  ViewController.m
//  runtimeDemo
//
//  Created by zhaoml on 2018/5/24.
//  Copyright © 2018年 赵明亮. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
#import "NSArray+Much.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc] init];
    
    [p performSelector:@selector(eat) withObject:@"zml"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
