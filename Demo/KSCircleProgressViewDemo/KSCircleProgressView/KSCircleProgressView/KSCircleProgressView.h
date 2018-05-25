//
//  KSCircleProgressView.h
//  KSCircle
//
//  Created by juliano on 5/16/18.
//  Copyright © 2018 juliano. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    KSCircleProgressViewStyleStroke = 0,
    KSCircleProgressViewStyleFill,
} KSCircleProgressViewStyle;

IB_DESIGNABLE
@interface KSCircleProgressView : UIView


@property  (nonatomic, strong) IBInspectable UIColor *dashColor;
@property  (nonatomic, strong)IBInspectable  UIColor *tintColor;
//#if TARGET_INTERFACE_BUILDER
@property  (nonatomic, assign)IBInspectable NSInteger progressViewStyle;
//#else
//@property  (nonatomic, assign)IBInspectable KSCircleProgressViewStyle viewStyle;
@property (nonatomic, assign)IBInspectable CGFloat lineWidth;
//#endif
@property (nonatomic, assign)IBInspectable CGFloat progress;

-(instancetype)initWithStyle:(KSCircleProgressViewStyle)progressViewStyle dashColor:(UIColor *)dashColor  tintColor:(UIColor *)tintColor lineWidth:(CGFloat)lineWidth;

@end
