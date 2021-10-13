//
//  NSChildObj+Cate.m
//  Demo
//
//  Created by FanQiLe on 2021/10/13.
//

#import "NSChildObj+Cate.h"
#import "NSObject+Swizzling.h"
#import "NSBaseObj.h"
#import "NSChildObj.h"
#import "NSChildObj+Cate.h"
#import "NSParentObj+Cate.h"

@implementation NSChildObj (Cate)

-(void)text_child{
    NSLog(@"text_child");
    [self text_child];
}
/*
 text  -> text_child
 text_parent -> text
 text_child -> text_parent
 */
+ (void)load {
    
    
    [objc_getClass("NSParentObj") swizzleMethod:@selector(text) swizzledSelector:@selector(text_parent)];
    
    [objc_getClass("NSChildObj") swizzleMethod:@selector(text) swizzledSelector:@selector(text_child)];
    
    NSChildObj *obj = [[NSChildObj alloc] init];
    [obj text];
}

@end
