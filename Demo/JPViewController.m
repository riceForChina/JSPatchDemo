//
//  JPViewController.m
//  JSPatch
//
//  Created by bang on 15/5/2.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import "JPViewController.h"
#import "TestProxy.h"
#import "NSChildObj.h"




@implementation JPViewController

//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//
//    return  [super resolveInstanceMethod:sel];
//}
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    return [super forwardingTargetForSelector:aSelector];
//}
- (void)viewDidLoad {
    [super viewDidLoad];
//    NSObject *tempObj = [[NSObject alloc] init];
//    @synchronized (NULL) {
//        NSLog(@"----------------------first");
//        @synchronized (NULL) {
//            NSLog(@"----------------------second");
//        }
//        NSLog(@"----------------------third");
//    }
//    self.view.backgroundColor = [UIColor whiteColor];
//    TestProxy *proxy = [TestProxy alloc];
//    [proxy text];
//    NSContainerView *containerView = [[NSContainerView alloc] init];
//    [self.view addSubview:containerView];
//    containerView.frame = self.view.bounds;
//    self.containerView = containerView;
//    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    [btn setTitle:@"Push JPTableViewController" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(handleBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
////    [self observer];
////    [NSThread observationInfo];
////    [NSRunLoop mainRunLoop]
////    [NSChildObj text];

//    
//    UIControl *tempV1 = [[UIControl alloc] init];
//    [tempV1 addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
//    [containerView addSubview:tempV1];
//    tempV1.backgroundColor = [UIColor redColor];
//    tempV1.frame = CGRectMake(100, 200, 100, 100);
    NSLog(@"----------------");
//    tempV.frame = CGRectZero;
//    CALayer *sub = [CALayer layer];
//    [tempV.layer addSublayer:sub];
//    sub.backgroundColor = [UIColor redColor].CGColor;
//    sub.frame = CGRectMake(100, 200, 100, 100);
//    tempV.bounds = CGRectMake(-100, 100, 100, 100);
    
//    [self.view setNeedsLayout];
//    __block __strong NSIniObj *obj = [[NSIniObj alloc] init];
    int age = 10;
//    obj.age = age;
//    obj.age = 12;
    
    void(^block1)(void) = ^(void) {
        
//     NSLog(@"无返回值, 无参数,%@",obj);
        NSLog(@"%ld",age);
    };
    int age1 = 0;
    int temp = 10;
        NSLog(@"%@",
              ^(){
            NSLog(@"%d",temp);
        });
    
    int val = 10;
        [self testMethod:^(int num) {
            NSLog(@"val=%d",val);
        }];
     // 调用block1
    age = 11;
//    self.block1 = block1;
    block1();
//    self.block1 = nil;
    
    __block int static_k = 3;
        __weak void (^myBlock)(void) = ^{
            static_k++;
        };
        myBlock();
        NSLog(@"%@",myBlock);
    
    NSString *tempStr2 = [NSString stringWithFormat:@"%@",@"---------234214323421432342143234214323421432342143"];
    
    self.temp3 = tempStr2;
    UIView *tempView = [UIView new];
    self.tempView = tempView;
    
    NSLog(@"-------------3%@",self.temp3);
    NSLog(@"-------------3%@",self.tempView);
    NSString *string = [NSString stringWithFormat:@"%@",@"WUYUBEICHEN"];
        self.weakString = string;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"-------------0%@",self.temp3);
    NSLog(@"-------------0%@",self.tempView);
    NSLog(@"viewWillAppear:%@", self.weakString);
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"-------------1%@",self.temp3);
    NSLog(@"-------------1%@",self.tempView);
}

- (void)testMethod:(void (^)(int num))block {
    NSLog(@"%@",block);
}
//__block_age :NSObject{
//    isa
//    forwaridng
//    age
//}
//__block_age {
//    isa
//    forwaridng
//    age
//}

- (void)onClick{
    NSLog(@"onClick");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"----------%@",[NSRunLoop currentRunLoop]);
    
        UIControl *tempV = [[UIControl alloc] init];
        [tempV addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.containerView addSubview:tempV];
        tempV.backgroundColor = [UIColor redColor];
        tempV.frame = CGRectMake(100, 200, 100, 100);
}
- (void)handleBtn:(id)sender
{
    
}


-(void)observer
{
    //1.创建监听者
    /*
     第一个参数:怎么分配存储空间
     第二个参数:要监听的状态 kCFRunLoopAllActivities 所有的状态
     第三个参数:时候持续监听
     第四个参数:优先级 总是传0
     第五个参数:当状态改变时候的回调
     */
    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
        
        /*
         kCFRunLoopEntry = (1UL << 0),        即将进入runloop
         kCFRunLoopBeforeTimers = (1UL << 1), 即将处理timer事件
         kCFRunLoopBeforeSources = (1UL << 2),即将处理source事件
         kCFRunLoopBeforeWaiting = (1UL << 5),即将进入睡眠
         kCFRunLoopAfterWaiting = (1UL << 6), 被唤醒
         kCFRunLoopExit = (1UL << 7),         runloop退出
         kCFRunLoopAllActivities = 0x0FFFFFFFU
         */
        switch (activity) {
            case kCFRunLoopEntry:
                NSLog(@"即将进入runloop");
                break;
            case kCFRunLoopBeforeTimers:
                NSLog(@"即将处理timer事件");
                break;
            case kCFRunLoopBeforeSources:
                NSLog(@"即将处理source事件");
                break;
            case kCFRunLoopBeforeWaiting:
                NSLog(@"即将进入睡眠");
                break;
            case kCFRunLoopAfterWaiting:
                NSLog(@"被唤醒");
                break;
            case kCFRunLoopExit:
                NSLog(@"runloop退出");
                break;
                
            default:
                break;
        }
    });
    
    /*
     第一个参数:要监听哪个runloop
     第二个参数:观察者
     第三个参数:运行模式
     */
    CFRunLoopAddObserver(CFRunLoopGetCurrent(),observer, kCFRunLoopDefaultMode);
    
    //NSDefaultRunLoopMode == kCFRunLoopDefaultMode
    //NSRunLoopCommonModes == kCFRunLoopCommonModes
}

@end


