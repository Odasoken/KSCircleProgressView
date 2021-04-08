//
//  ViewController.m
//  KSCircleProgressViewDemoWithFramework
//
//  Created by lx on 2021/4/7.
//  Copyright © 2021 juliano. All rights reserved.
//

#import "ViewController.h"
#import <KSCircleProgressViewFramework/KSCircleProgressViewFramework.h>

@interface ViewController ()

@property (strong, nonatomic)  KSCircleProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
       _progressView =  [[KSCircleProgressView alloc] init];
       _progressView.frame = CGRectMake(0, 64, 200, 200);
       _progressView.backgroundColor = [UIColor clearColor];
       [self.view addSubview:_progressView];
       _progressView.dashColor = [UIColor redColor];
        _progressView.tintColor = [UIColor blueColor];
        _progressView.lineWidth = 5.0;
        _progressView.progress = 0.35;
       _progressView.progressViewStyle = KSCircleProgressViewStyleFill;
}


@end
