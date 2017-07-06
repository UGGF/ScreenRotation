//
//  MSURuntimeTools.m
//  gaga
//
//  Created by Zhuge_Su on 2017/7/6.
//  Copyright © 2017年 Zhuge_Su. All rights reserved.
//

#import "MSURuntimeTools.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation MSURuntimeTools

+ (void)getSomethingFromRuntimeByClass:(id)obj{
    
    unsigned int count;
    //获取属性列表
    objc_property_t *propertyList = class_copyPropertyList([obj class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *propertyname = property_getName(propertyList[i]) ;
        NSLog(@"property----="">%@", [NSString stringWithUTF8String:propertyname]);
    }
    //获取方法列表
    Method *methodList = class_copyMethodList([obj class], &count);
    for (unsigned int i = 0; i<count; i++) {
        Method method = methodList[i];
        NSLog(@"method----="">%@", NSStringFromSelector(method_getName(method)));
    }
    //获取成员变量列表
    Ivar *ivarList = class_copyIvarList([obj class], &count);
    for (unsigned int i = 0; i<count; i++) {
        Ivar myivar = ivarList[i];
        const char *ivarname = ivar_getName(myivar);
        NSLog(@"ivar----="">%@", [NSString stringWithUTF8String:ivarname]);
    }
    //获取协议列表
    __unsafe_unretained Protocol **protocolList = class_copyProtocolList([obj class], &count);
    for (unsigned int i = 0; i<count; i++) {
        Protocol *myprotocal = protocolList[i];
        const char *protocolname = protocol_getName(myprotocal);
        NSLog(@"protocol----="">%@", [NSString stringWithUTF8String:protocolname]);
    }

}

@end
