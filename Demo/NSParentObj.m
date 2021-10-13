//
//  NSParentObj.m
//  Demo
//
//  Created by FanQiLe on 2021/10/13.
//

#import "NSParentObj.h"

@implementation NSParentObj

-(void)text_parent_parent{
    NSLog(@"text_parent");
    [self text_parent_parent];
}
@end
