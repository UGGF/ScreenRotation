//
//  MSURuntimeTools.h
//  gaga
//
//  Created by Zhuge_Su on 2017/7/6.
//  Copyright © 2017年 Zhuge_Su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSURuntimeTools : NSObject

/* 通过 Runtime 获取属性、方法、成员变量、协议 */
+ (void)getSomethingFromRuntimeByClass:(id)obj;

@end
