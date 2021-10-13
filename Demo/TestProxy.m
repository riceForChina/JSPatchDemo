//
//  TestProxy.m
//  Demo
//
//  Created by FanQiLe on 2021/7/30.
//

#import "TestProxy.h"

@implementation TestProxy


- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    NSLog(@"----------methodSignature");
    return [super methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation{
    NSLog(@"------------forwardInvocation");
    [super forwardInvocation:invocation];
}
@end
