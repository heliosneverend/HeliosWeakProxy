//
//  ViewController.m
//  HeliosWeakProxy
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "ViewController.h"
#import "YYFPSLabel.h"
@interface ViewController ()
@property (nonatomic, strong)YYFPSLabel *fpsLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testFPSLabel];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark 测试FPS
- (void)testFPSLabel {
    _fpsLabel = [[YYFPSLabel alloc]init];
    _fpsLabel.frame = CGRectMake(30, self.view.bounds.size.height-60, 50, 30);
    [_fpsLabel sizeToFit];
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [window addSubview:_fpsLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
