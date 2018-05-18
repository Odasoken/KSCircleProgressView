//
//  ViewController.m
//  KSCircleProgressViewDemo
//
//  Created by juliano on 5/18/18.
//  Copyright © 2018 juliano. All rights reserved.
//

#import "ViewController.h"
#import "KSCircleProgressView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet KSCircleProgressView *strokeProgressView;
@property (weak, nonatomic) IBOutlet KSCircleProgressView *fillProgressView;
@property (nonatomic, strong)  NSTimer *timer ;
@property (nonatomic, assign) CGFloat progress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Action
- (IBAction)startAnimateProgress:(UIButton *)sender {
    [_timer invalidate];
    self.progress = 0;
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(increaseProgress) userInfo:nil repeats:true];
}

-(void)increaseProgress
{
    self.progress += 0.001;
    
}

-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    if (progress > 1.0)
    {
        _progress = 1.0;
        [_timer invalidate];
        _timer = nil;
    }
    _strokeProgressView.progress = self.progress;
    _fillProgressView.progress = self.progress;
}


@end
