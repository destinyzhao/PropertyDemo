//
//  ViewController.m
//  PropertyDemo
//
//  Created by Destiny on 2018/9/6.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) NSString *strongStr;
@property(nonatomic, copy) NSString *copyyStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testCase2];
}

- (void)testCase1
{
    // 第一种场景：用NSString直接赋值
    NSString *originStr = [NSString stringWithFormat:@"hello,originStr"];
    
    _strongStr = originStr;
    _copyyStr = originStr;
    
    NSLog(@"originStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", originStr, &originStr, originStr);
    NSLog(@"strongStr 对象地址: %p ,对象指针地址: %p ,对象的值:%@", _strongStr, &_strongStr, _strongStr);
    NSLog(@"copyyStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", _copyyStr, &_copyyStr, _copyyStr);
}

- (void)testCase2
{
    // 第二种场景：用NSString直接赋值
    NSString *originStr = [NSString stringWithFormat:@"hello,originStr"];
    
    self.strongStr = originStr;
    self.copyyStr = originStr;
    
    NSLog(@"originStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", originStr, &originStr, originStr);
    NSLog(@"strongStr 对象地址: %p ,对象指针地址: %p ,对象的值:%@", _strongStr, &_strongStr, _strongStr);
    NSLog(@"copyyStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", _copyyStr, &_copyyStr, _copyyStr);
}

- (void)testCase3
{
    // 第三种场景：用NSMutableString直接赋值
    NSMutableString *originStr = [NSMutableString stringWithFormat:@"hello,originStr"];
    
    _strongStr = originStr;
    _copyyStr = originStr;
    
    [originStr setString:@"hello,I changed"];
    
    NSLog(@"originStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", originStr, &originStr, originStr);
    NSLog(@"strongStr 对象地址: %p ,对象指针地址: %p ,对象的值:%@", _strongStr, &_strongStr, _strongStr);
    NSLog(@"copyyStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", _copyyStr, &_copyyStr, _copyyStr);
}

- (void)testCase4
{
    // 第四种场景：用NSMutableString直接赋值
    NSMutableString *originStr = [NSMutableString stringWithFormat:@"hello,originStr"];
    
    self.strongStr = originStr;
    self.copyyStr = originStr;
    
    [originStr setString:@"hello,I changed"];
    
    NSLog(@"originStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", originStr, &originStr, originStr);
    NSLog(@"strongStr 对象地址: %p ,对象指针地址: %p ,对象的值:%@", _strongStr, &_strongStr, _strongStr);
    NSLog(@"copyyStr 对象地址: %p ,对象指针地址:%p ,对象的值:%@", _copyyStr, &_copyyStr, _copyyStr);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
