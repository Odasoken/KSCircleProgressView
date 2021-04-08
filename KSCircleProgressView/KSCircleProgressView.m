//
//  KSCircleProgressView.m
//  KSCircle
//
//  Created by juliano on 5/16/18.
//  Copyright © 2018 juliano. All rights reserved.
//

#import "KSCircleProgressView.h"


@interface KSCircleProgressView()

@property (strong, nonatomic)  UILabel *progressLabel;

@end

@implementation KSCircleProgressView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithStyle:(KSCircleProgressViewStyle)progressViewStyle dashColor:(UIColor *)dashColor  tintColor:(UIColor *)tintColor lineWidth:(CGFloat)lineWidth
{
    self = [super init];
    self.backgroundColor = [UIColor clearColor];
    _progressViewStyle = progressViewStyle;
   self.dashColor = dashColor;
    _tintColor = tintColor;
    _lineWidth = lineWidth;
    
    return self;
}
#pragma mark - settings
-(void)setShowPercentagLabel:(BOOL)showPercentagLabel
{
    _showPercentagLabel = showPercentagLabel;
    _progressLabel.hidden = !showPercentagLabel;
}
-(UILabel *)progressLabel
{
    if (_progressLabel == nil) {
        _progressLabel =  [[UILabel alloc] init];
        _progressLabel.textColor = [UIColor blackColor];
        _progressLabel.textAlignment = NSTextAlignmentCenter;
        _progressLabel.hidden = !_showPercentagLabel;
        [self addSubview:_progressLabel];
    }
    return _progressLabel;
}

-(void)setViewStyle:(KSCircleProgressViewStyle)progressViewStyle
{
    _progressViewStyle =  progressViewStyle;
    [self setNeedsDisplay];
    
}

-(void)setDashColor:(UIColor *)dashColor
{
    _dashColor = dashColor;
    [self setNeedsDisplay];
}

-(void)setTintColor:(UIColor *)tintColor
{
    _tintColor = tintColor;
    [self setNeedsDisplay];
}

-(void)setLineWidth:(CGFloat)lineWidth
{
    _lineWidth = lineWidth;
    [self setNeedsDisplay];
}

-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    NSString *text = nil;
    if (progress >= 1.0) {
        text = @"100%";
    }else if ( progress <= 0.0)
    {
        text = @"";
    }else
    {
        NSString *percent = [NSString stringWithFormat:@"%0.2f",progress];
        percent = [percent stringByReplacingOccurrencesOfString:@"0." withString:@""];
        text = [NSString stringWithFormat:@"%ld%%",(long)[percent integerValue]];
    }
    self.progressLabel.text = text;
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect
{
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    CGFloat radius = MIN(width, height) * 0.5;
    if (_progressViewStyle == KSCircleProgressViewStyleStroke)
    {
        radius -= _lineWidth;

    }
    CGPoint originPoint = CGPointMake(width * 0.5, height * 0.5);
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:originPoint radius:radius startAngle:0 endAngle: M_PI * 2  clockwise:true];
   
    
    CGFloat startAngle = -M_PI * 0.5;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:originPoint radius:radius startAngle:startAngle endAngle:startAngle + M_PI * 2 * self.progress clockwise:true];

    
    
    if (_progressViewStyle == KSCircleProgressViewStyleStroke)
    {
        path1.lineWidth = _lineWidth;
        [_dashColor set];
        [path1 stroke];
        
        path.lineWidth = _lineWidth;
        [_tintColor set];
        [path stroke];
    }else
    {
        //KSCircleProgressViewStyleFill
        [_dashColor set];
         [path1 fill];
        [_tintColor set];
        [path addLineToPoint:originPoint];
         [path fill];
    }
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _progressLabel.frame = self.bounds;
    [self setNeedsDisplay];
}

@end
