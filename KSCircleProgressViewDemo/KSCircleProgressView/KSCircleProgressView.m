//
//  KSCircleProgressView.m
//  KSCircle
//
//  Created by juliano on 5/16/18.
//  Copyright © 2018 juliano. All rights reserved.
//

#import "KSCircleProgressView.h"


@interface KSCircleProgressView()


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
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect
{
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    CGFloat radius = MIN(width, height) * 0.5 - 5;
    CGPoint originPoint = CGPointMake(width * 0.5, height * 0.5);
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:originPoint radius:radius startAngle:0 endAngle: M_PI * 2  clockwise:true];
   
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:originPoint radius:radius startAngle:M_PI * 1.5 endAngle:M_PI * 1.5 + M_PI * 2 * self.progress clockwise:true];

    
    
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
    [self setNeedsDisplay];
}


@end
